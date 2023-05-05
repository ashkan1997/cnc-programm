//                       _       __                   _     _           _       
//                    /\| |/\   / _|                 | |   (_)         | |      
//   _   _ ___  ___   \ ` ' /  | |_ ___  _ __    ___ | |__  _  ___  ___| |_ ___ 
//  | | | / __|/ _ \ |_     _| |  _/ _ \| '__|  / _ \| '_ \| |/ _ \/ __| __/ __|
//  | |_| \__ \  __/  / , . \  | || (_) | |    | (_) | |_) | |  __/ (__| |_\__ \
//   \__,_|___/\___|  \/|_|\/  |_| \___/|_|     \___/|_.__/| |\___|\___|\__|___/
//                                                        _/ |                  
//                                                       |__/                   


//   ____  _            _    
//  | __ )| | ___   ___| | __
//  |  _ \| |/ _ \ / __| |/ /
//  | |_) | | (_) | (__|   < 
//  |____/|_|\___/ \___|_|\_\

#include "block_la.h"  
#include <math.h>



//   _____            _                _   _             
//  |  __ \          | |              | | (_)            
//  | |  | | ___  ___| | ___ _ __ __ _| |_ _  ___  _ __  
//  | |  | |/ _ \/ __| |/ _ \ '__/ _` | __| |/ _ \| '_ \ 
//  | |__| |  __/ (__| |  __/ | | (_| | |_| | (_) | | | |
//  |_____/ \___|\___|_|\___|_|  \__,_|\__|_|\___/|_| |_|

typedef struct { 
  data_t a, d;             // acceleration
  data_t f, l;             // nominal feedrate and length
  data_t fs, fe;           // initial and final feedrate
  data_t dt_1, dt_m, dt_2; // trapezoid times
  data_t dt;               // total time
} block_profile_t;


// Block object structure
typedef struct block {
  char *line;            // G-code line
  block_type_t type;     // type of block
  size_t n;              // block number
  size_t tool;           // tool number
  data_t feedrate;       // nominal feedrate
  data_t act_feedrate;   // actual feedrate (possibly reduced along arcs)
  data_t spindle;        // spindle rate
  point_t *target;       // destination point
  point_t *delta;        // distance vector w.r.t. previous point
  point_t *center;       // arc center (if it is an arc)
  data_t length;         // total length
  data_t i, j, r;        // center coordinates and radius (if it is an arc)
  data_t theta0, dtheta; // arc initial angle and arc angle
  data_t acc;            // actual acceleration
  machine_t *machine;    // machine configuration
  block_profile_t *prof; // velocity profile
  struct block *prev;    // next block (linked list)
  struct block *next;    // previous block
} block_t;

//    _____ _        _   _      
//   / ____| |      | | (_)     
//  | (___ | |_ __ _| |_ _  ___ 
//   \___ \| __/ _` | __| |/ __|
//   ____) | || (_| | |_| | (__ 
//  |_____/ \__\__,_|\__|_|\___|
                             
                             
static int block_set_fields(block_t *b,char cmd, char *arg);

static point_t *point_zero(block_t *b);
static void block_compute(block_t *b);





//    __                  _   _                 
//   / _|                | | (_)                
//  | |_ _   _ _ __   ___| |_ _  ___  _ __  ___ 
//  |  _| | | | '_ \ / __| __| |/ _ \| '_ \/ __|
//  | | | |_| | | | | (__| |_| | (_) | | | \__ \
//  |_|  \__,_|_| |_|\___|\__|_|\___/|_| |_|___/

block_t *block_new (const char *line, block_t *prev, machine_t *cfg){
  assert(line && cfg);
  block_t *b = calloc(1,sizeof(block_t));
  if(!b){
    fprintf(stderr,'could not make new block!!');
    exit(EXIT_FAILURE);
  }

  if(prev){  // copy the memory from the prev block
    memccpy(b,prev,sizeof(block_t));
    b->prev = prev;
    prev->next = b;
  }
  else{     // this is the first block
    //nothing to do
  }

  // I,J,P are not modal. they should not be copied from previouse block
  b->i = b->j = b->r = 0;
  
  // fields to be calculated
  b->lenght = 0;
  b->target = point_new();
  b->delta = point_new();
  b->center = point_new();

  b->prof = (block_profile_t *)calloc(1,sizeof(block_profile_t));
  if(!b->prof){
    fprintf(stderr,"couldnt make new profile struct!!")
    exit(EXIT_FAILURE);
  }

  b->machine = (machine_t *)cfg;
  b->type = NO_MOTION;
  b->acc = machine_A(b->machine);
  b->line = (char *)malloc(sizeof(line));
  strncpy(b->line,line,sizeof(line));
  if(!b->line){
    fprintf(stderr,"couldnt copy block line");
    exit(EXIT_FAILURE);
  }
  return b;
}

void block_free(block_t *b){
  assert(b);
  if(b->line) free(b->line);
  if(b->prof) free(b->prof);
  point_free(b->target);
  point_free(b->delta);
  point_free(b->center);
  free(b);
  b = NULL;
}

int block_parse(block_t *b){
  assert(b);
  char *tofree , *line , *word;
  point_t *p0;
  int rv = 0;     //return value, just for counting the errors
  tofree = line = strdup(b->line);
  if(!line){
    perror("Error copying line");
    exit(EXIT_FAILURE);
  }
  while ((word = strsep(&line, " ")) != NULL){
    //word[0] is the command
    //word+1 is the pointer to the argument as a string
    rv += block_set_fields(b, word[0], word + 1);
  }
  free(tofree);

  // inherit modal fields from the previous block
  p0 = point_zero(b);
  point_modal(p0, b->target);
  point_delta(p0, b->target, b->delta);
  b->length = point_dist(p0, b->target);
  
  // deal with motion blocks
  switch (b->type) {
  case LINE:
    // calculate feed profile
    b->acc = machine_A(b->machine);
    b->act_feedrate = b->feedrate;
    block_compute(b);
    break;
  case ARC_CW:
  case ARC_CCW:
    // calculate arc coordinates
    if (block_arc(b)) {
      rv++;
      break;
    }
    // set corrected feedrate and acceleration
    // centripetal acc = f^2/r, must be <= A
    // INI file gives A in mm/s^2, feedrate is given in mm/min
    // We divide by two because, in the critical condition where we have 
    // the maximum feedrate, in the following equation for calculating the 
    // acceleration, it goes to 0. In fact, if we accept the centripetal 
    // acceleration to reach the maximum acceleration, then the tangential 
    // acceleration would go to 0.
    // A more elegant solution would be to calculate a minimum time soltion 
    // for the whole arc, but it is outside the scope.
    b->act_feedrate =
        MIN(b->feedrate, sqrt(machine_A(b->machine)/2.0 * b->r) * 60);
    // tangential acceleration: when composed with centripetal one, total
    // acceleration must be <= A
    // a^2 <= A^2 + v^4/r^2
    b->acc = sqrt(pow(machine_A(b->machine), 2) - pow(b->act_feedrate / 60, 4) / pow(b->r, 2));
    // deal with complex result
    if (isnan(b->acc)) {
      eprintf("Cannot compute arc: insufficient acceleration");
      rv++;
    }
    // calculate feed profile
    block_compute(b);
    break;
  default:
    break;
  }
  // return number of parsing errors
  return rv;
}
  return rv;
}

data_t block_lambda(const block_t *b, data_t time){


}

point_t *block_interpolate(block_t *b, data_t lambda){


}

void block_print(const block_t *b, FILE *out){
  assert(b && out);
  char *start, *end;
  point_t *p0 = point_zero(b);    // this function indicate the starting point
  point_inspect(p0,&start);
  point_inspect(b->target,&end);
  fprintf(out,"%03lu %s->%s F%7.1f S%7.1f T%2lu (%d)\n", b->n, start, end, b->feedrate, b->spindle,b->tool, b->type)
  free(end);
  free(start);
}


// Getters

data_t block_length(const block_t *b){
  assert(b);
  return(b->lenght);
}
data_t block_dtheta(const block_t *b){
  assert(b);
  return(b->dtheta);

}  // arc length
point_t *block_center(const block_t *b){
  assert(b);
  return(b->center);
}


//   _                _               _                    _ 
//  | |    ___   ___ | | __      __ _| |__   ___  __ _  __| |
//  | |   / _ \ / _ \| |/ /____ / _` | '_ \ / _ \/ _` |/ _` |
//  | |__| (_) | (_) |   <_____| (_| | | | |  __/ (_| | (_| |
//  |_____\___/ \___/|_|\_\     \__,_|_| |_|\___|\__,_|\__,_|
//
// Implement here block-related functions for look-ahead





//       _        _   _        ______           
//      | |      | | (_)      |  ____|          
//   ___| |_ __ _| |_ _  ___  | |__ _   _ _ __  
//  / __| __/ _` | __| |/ __| |  __| | | | '_ \ 
//  \__ \ || (_| | |_| | (__  | |  | |_| | | | |
//  |___/\__\__,_|\__|_|\___| |_|   \__,_|_| |_|
                                             
                                             
static int block_set_fields(block_t *b,char cmd, char *arg){
  assert(b , arg);
  switch (cmd)
  {
  case 'N':
    b->n = atol(arg);
    break;
  case 'G':
    b->type = (block_type_t)atoi(arg);
    break;
  case 'X':
    point_set_x(b->target , atof(arg));
    break;

  case 'Y':
    point_set_y(b->target , atof(arg));
    break;

  case 'Z':
     point_set_z(b->target , atof(arg));
     break;

  case 'I':
     b->i = atof(arg);
     break;
      
  case 'J':
     b->j = atof(arg);
     break;
  case 'R':
     b->r = atof(arg);
     break;

  case 'F':
     b->feedrate = atof(arg);
     break;
  case 'S':
     b->spindle = atof(arg);
     break;
    case 'T':
     b->tool = atol(arg);
     break;

  default:
    fprintf(stderr,"PARSSING ERROR. Unexpected command %c %s\n", cmd, arg);
    return 1;
    break;
  }

  // cannor have R and I,J on the same time
  if(b->r && b->i || b->j){
    fprintf(stderr,"PARSING ERROR. BOTH R AND IJ ARE FOUND\n");
    return 1;
  }
  return 0;
}


static point_t *point_zero(block_t *b){
  assert(b);
  point_t *p0 = NULL;     // initialize the pointer to avoid any conflict
  if(b->prev == NULL){
    p0 = point_new();
    point_set_xyz(p0, 0, 0, 0)
  }
  else{
    p0 = b->prev->target;
  }
  
  return p0;
  }

//   _______ ______  _____ _______   __  __          _____ _   _ 
//  |__   __|  ____|/ ____|__   __| |  \/  |   /\   |_   _| \ | |
//     | |  | |__  | (___    | |    | \  / |  /  \    | | |  \| |
//     | |  |  __|  \___ \   | |    | |\/| | / /\ \   | | | . ` |
//     | |  | |____ ____) |  | |    | |  | |/ ____ \ _| |_| |\  |
//     |_|  |______|_____/   |_|    |_|  |_/_/    \_\_____|_| \_|
                                                              
#ifndef BLOCK_MAIN
int main(){

  block_t *b1 = NULL, *b2 = NULL, *b3 = NULL;
  machine_t *cfg = machine_new(NULL);

  b1 = block_new("N10 G00 X90 Y90 Z100 t3", NULL, cfg);
  block_parse(b1);
  b2 = block_new("N20 G01 Y100 X100 F1000 S2000", b1, cfg);
  block_parse(b2);
  b3 = block_new("N30 G01 Y200", b2, cfg);
  block_parse(b3);

  block_print(b1,stdout);
  block_print(b2,stdout);
  block_print(b3,stdout);


  block_free(b1);
  block_free(b2);
  block_free(b3);

  return 0;
}



#endif


//    _____ _        _   _      
//   / ____| |      | | (_)     
//  | (___ | |_ __ _| |_ _  ___ 
//   \___ \| __/ _` | __| |/ __|
//   ____) | || (_| | |_| | (__ 
//  |_____/ \__\__,_|\__|_|\___|

static void block_compute(block_t *b) {
  assert(b);
  data_t A, a, d;
  data_t dt, dt_1, dt_2, dt_m, dq;
  data_t f_s, f_m, f_e , l;
  data_t cos_alpha;
  data_t ax, bx, ay , by , dot_prod;


  if(!b->prev){
    f_s = 0;
    f_m = b->act_feedrate / 60;
    ax = point_x(b->target); 
    ay = point_y(b->target);
    bx = point_x(b->next->target) - point_x(b->target);
    by = point_y(b->next->target) - point_y(b->target);
    dot_prod = (ax*bx) + (ay*by);
    cos_alpha = (dot_prod)/(b->length * b->next->length);
    f_e = (f_m + b->next->prof->fe) * cos_alpha;

    if(b->type == ARC_CCW || b->type == ARC_CW){
      f_m = sqrt(a * R);
    }



  }else{



  }
  
  b->prof.fe = f_e;
  b->prof->fs = f_s;
    
}