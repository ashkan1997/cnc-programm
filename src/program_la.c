//   ____                                      
//  |  _ \ _ __ ___   __ _ _ __ __ _ _ __ ___  
//  | |_) | '__/ _ \ / _` | '__/ _` | '_ ` _ \ 
//  |  __/| | | (_) | (_| | | | (_| | | | | | |
//  |_|   |_|  \___/ \__, |_|  \__,_|_| |_| |_|
//                   |___/                     

// #include "program.h"
#include "program_la.h"


//   ____            _                 _   _                 
//  |  _ \  ___  ___| | __ _ _ __ __ _| |_(_) ___  _ __  ___ 
//  | | | |/ _ \/ __| |/ _` | '__/ _` | __| |/ _ \| '_ \/ __|
//  | |_| |  __/ (__| | (_| | | | (_| | |_| | (_) | | | \__ \
//  |____/ \___|\___|_|\__,_|_|  \__,_|\__|_|\___/|_| |_|___/
                                                          
// Program object structure
typedef struct program {
  char *filename;                  // file name
  FILE *file;                      // file handle
  block_t *first, *last, *current; // block pointers
  size_t n;                        // total number of blocks
} program_t;


//   _____                 _   _
//  |  ___|   _ _ __   ___| |_(_) ___  _ __  ___
//  | |_ | | | | '_ \ / __| __| |/ _ \| '_ \/ __|
//  |  _|| |_| | | | | (__| |_| | (_) | | | \__ \
//  |_|   \__,_|_| |_|\___|\__|_|\___/|_| |_|___/

// LIFECYCLE ===================================================================

program_t *program_new(const char *filename) {
  // create memory object
  program_t *p = (program_t *)calloc(1, sizeof(program_t));
  if (!p) {
    perror("Could not create program");
    return NULL;
  }
  if (!filename || strlen(filename) == 0) {
    fprintf(stderr, "Improper or empty file name\n");
    return NULL;
  }
  // Initialize fields
  p->filename = strdup(filename);
  p->first = NULL;
  p->last = NULL;
  p->current = NULL;
  p->n = 0;
  return p;
}

// deallocate
void program_free(program_t *p) {
  assert(p);
  block_t *b, *tmp;
  // free the linked list of blocks
  if (p->n > 0) {
    b = p->first;
    do {
      tmp = b;
      b = block_next(b);
      block_free(tmp);
    } while (b);
  }
  free(p->filename);
  free(p);
  p = NULL;
}

// print a program description
void program_print(const program_t *p, FILE *output) {
  assert(p);
  block_t *b = p->first;
  do {
    block_print(b, output);
    b = block_next(b);
  } while (b);
}


// PROCESSING ==================================================================

// parse the program
// return either EXIT_SUCCESS or EXIT_FAILURE
int program_parse_partial(program_t *p, machine_t *cfg) {
  assert(p && cfg);
  char *line = NULL;
  ssize_t line_len = 0;
  size_t n = 0;
  block_t *b;

  // open the file
  p->file = fopen(p->filename, "r");
  if (!p->file) {
    fprintf(stderr, "ERROR: cannot open the file %s\n", p->filename);
    return EXIT_FAILURE;
  }

  // read the file, one line at a time, and create a new block for
  // each line
  p->n = 0;
  while ( (line_len = getline(&line, &n, p->file)) >= 0 ) {
    // remove trailing newline (\n) replacing it with a terminator
    if (line[line_len-1] == '\n') {
      line[line_len-1] = '\0'; 
    }
    if(!(b = block_new(line, p->last, cfg))) {
      fprintf(stderr, "ERROR: creating the block %s\n", line);
      return EXIT_FAILURE;
    }
    if (block_parse_partial(b)) {
      fprintf(stderr, "ERROR: parsing the block %s\n", line);
      return EXIT_FAILURE;
    }
    if (p->first == NULL) p->first = b;
    p->last = b;
    p->n++;
  }
  fclose(p->file);
  free(line);
  program_reset(p);
  return EXIT_SUCCESS;
}



// linked-list navigation functions
block_t *program_next(program_t *p) {
  assert(p);
  if (p->current == NULL) p->current = p->first;
  else p->current = block_next(p->current);
  return p->current;
}

block_t *program_prev(program_t *p) {
  assert(p);
  if (p->current == NULL) p->current = p->last;
  else p->current = block_prev(p->current);
  return p->current;
}

void program_reset(program_t *p) {
  assert(p);
  p->current = NULL;
}

int program_parse(program_t *p){
  assert(p);
  program_reset(p);
  block_t *b = program_next(p);
  

  while (b != NULL){
    
    if(block_velocity(b)){
      fprintf(stderr, "ERROR: parsing the block\n");
      return EXIT_FAILURE;}
    b = program_next(p);


  }

}


void program_velocity(program_t *p){
  assert(p);
  program_reset(p);
  block_t *b = program_next(p);

  while (b!= NULL){

    if(block_velocity(b)){
      fprintf(stderr , "ERROR: parsing the block\n");
      return EXIT_FAILURE;
    }
    b = program_next(p);
  }
}

void program_acc(program_t *p){
  assert(p);
  program_reset(p);
  block_t *b = program_next(p);

  while( b!= NULL){

    if(block_acc)
  }
}

//_                    _ 
//  | |    ___   ___ | | __      __ _| |__   ___  __ _  __| |
//  | |   / _ \ / _ \| |/ /____ / _` | '_ \ / _ \/ _` |/ _` |
//  | |__| (_) | (_) |   <_____| (_| | | | |  __/ (_| | (_| |
//  |_____\___/ \___/|_|\_\     \__,_|_| |_|\___|\__,_|\__,_|

// int program_parse_st1(program_t *p){
//   assert(p);
//   block_t *b;
//   program_reset(p);
//   do{
//     b = program_next(p);
//     if (!b) break;
//     if (block_velocity(b)) {
//       fprintf(stderr, "ERROR: parsing the block\n");
//       return EXIT_FAILURE;}
//     }while(p->current != NULL);
  
// }

// int program_parse_st2(program_t *p){
//   assert(p);
//   block_t *b;
//   program_reset(p);
//   do{
//     b = program_next(p);
//     if (!b) break;
//     if (block_acc(b)) {
//       fprintf(stderr, "ERROR: parsing the block\n");
//       return EXIT_FAILURE;}
//     }while(p->current != NULL);
  
// }









// GETTERS =====================================================================

#define program_getter(typ, par, name) \
typ program_##name(const program_t *p) { assert(p); return p->par; }

program_getter(char *, filename, filename);
program_getter(block_t *, first, first);
program_getter(block_t *, current, current);
program_getter(block_t *, last, last);
program_getter(size_t, n, length);





