//   ____  _            _    
//  | __ )| | ___   ___| | __
//  |  _ \| |/ _ \ / __| |/ /
//  | |_) | | (_) | (__|   < 
//  |____/|_|\___/ \___|_|\_\
                          

#ifndef BLOCK_LA_H
#define BLOCK_LA_H

#include "defines.h"
#include "point.h"
#include "machine.h"

typedef struct block block_t;

typedef enum{
  RAPID = 0,
  LINE,
  ARC_CW,
  ARC_CCW,
  NO_MOTION
}block_type_t;


block_t *block_new (const char *line, block_t *prev, machine_t *cfg);

void block_free(block_t *b);

int block_parse(block_t *b);

data_t block_lambda(const block_t *b, data_t time);

point_t *block_interpolate(block_t *b, data_t lambda);

void block_print(const block_t *b, FILE *out);


// Getters

data_t block_length(const block_t *b);
data_t block_dtheta(const block_t *b);  // arc length
point_t *block_center(const block_t *b)


//   _                _               _                    _ 
//  | |    ___   ___ | | __      __ _| |__   ___  __ _  __| |
//  | |   / _ \ / _ \| |/ /____ / _` | '_ \ / _ \/ _` |/ _` |
//  | |__| (_) | (_) |   <_____| (_| | | | |  __/ (_| | (_| |
//  |_____\___/ \___/|_|\_\     \__,_|_| |_|\___|\__,_|\__,_|
//
// Implement here block-related functions for look-ahead





#endif //BLOCK_LA_H