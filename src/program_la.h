//   ____                                      
//  |  _ \ _ __ ___   __ _ _ __ __ _ _ __ ___  
//  | |_) | '__/ _ \ / _` | '__/ _` | '_ ` _ \ 
//  |  __/| | | (_) | (_| | | | (_| | | | | | |
//  |_|   |_|  \___/ \__, |_|  \__,_|_| |_| |_|
//                   |___/                     
//   _                _               _                    _ 


#ifndef PROGRAM_H
#define PROGRAM_H

#include "defines.h"
#include "point.h"
#include "block_la.h"

//   _____                      
//  |_   _|   _ _ __   ___  ___ 
//    | || | | | '_ \ / _ \/ __|
//    | || |_| | |_) |  __/\__ \
//    |_| \__, | .__/ \___||___/
//        |___/|_|              

// Opaque structure
typedef struct program program_t;


//   _____                 _   _                 
//  |  ___|   _ _ __   ___| |_(_) ___  _ __  ___ 
//  | |_ | | | | '_ \ / __| __| |/ _ \| '_ \/ __|
//  |  _|| |_| | | | | (__| |_| | (_) | | | \__ \
//  |_|   \__,_|_| |_|\___|\__|_|\___/|_| |_|___/

// LIFECYCLE ===================================================================

// create a new program from the given filename
program_t *program_new(const char *filename);

// deallocate
void program_free(program_t *program);

// print a program description
void program_print(const program_t *program, FILE *output);

// PROCESSING ==================================================================

// parse the program
// return either EXIT_SUCCESS or EXIT_FAILURE
// int program_parse(program_t *program, machine_t *cfg);

// linked-list navigation functions
block_t *program_next(program_t *program);
block_t *program_prev(program_t *program);
void program_reset(program_t *program);


// GETTERS =====================================================================

char *program_filename(const program_t *p);
size_t program_length(const program_t *p);
block_t *program_current(const program_t *p);
block_t *program_first(const program_t *p);
block_t *program_last(const program_t *p);



//  | |    ___   ___ | | __      __ _| |__   ___  __ _  __| |
//  | |   / _ \ / _ \| |/ /____ / _` | '_ \ / _ \/ _` |/ _` |
//  | |__| (_) | (_) |   <_____| (_| | | | |  __/ (_| | (_| |
//  |_____\___/ \___/|_|\_\     \__,_|_| |_|\___|\__,_|\__,_|
//
// Add here program-relatred functions for implementing the look-ahead behaviour


#include "defines.h"
#include "point.h"
#include "block_la.h"

// for example:
int program_parse_partial(program_t *p, machine_t *cfg) ;

int program_parse(program_t *p);
// int program_look_ahead(program_t *p);

#endif // end double inclusion guard
