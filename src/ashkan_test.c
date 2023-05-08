/******************************************************************************
Finite State Machine
Project: c-cnc/src/example.dot
Description: ashkan_example

Generated by gv_fsm ruby gem, see https://rubygems.org/gems/gv_fsm
gv_fsm version 0.3.3
Generation date: 2023-02-25 21:52:11 +0100
Generated from: c-cnc/src/example.dot
The finite state machine has:
  4 states
  1 transition functions
******************************************************************************/

#include <syslog.h>
#include "ashkan_test.h"

// SEARCH FOR Your Code Here FOR CODE INSERTION POINTS!

// GLOBALS
// State human-readable names
const char *state_names[] = {"init", "idle", "run", "stop"};

// List of state functions
state_func_t *const state_table[NUM_STATES] = {
  do_init, // in state init
  do_idle, // in state idle
  do_run,  // in state run
  do_stop, // in state stop
};

// Table of transition functions
transition_func_t *const transition_table[NUM_STATES][NUM_STATES] = {
  /* states:     init , idle , run  , stop  */
  /* init    */ {NULL , reset, NULL , NULL }, 
  /* idle    */ {NULL , NULL , NULL , NULL }, 
  /* run     */ {NULL , reset, NULL , NULL }, 
  /* stop    */ {NULL , NULL , NULL , NULL }, 
};

/*  ____  _        _       
 * / ___|| |_ __ _| |_ ___ 
 * \___ \| __/ _` | __/ _ \
 *  ___) | || (_| | ||  __/
 * |____/ \__\__,_|\__\___|
 *                         
 *   __                  _   _                 
 *  / _|_   _ _ __   ___| |_(_) ___  _ __  ___ 
 * | |_| | | | '_ \ / __| __| |/ _ \| '_ \/ __|
 * |  _| |_| | | | | (__| |_| | (_) | | | \__ \
 * |_|  \__,_|_| |_|\___|\__|_|\___/|_| |_|___/
 */                                             

// Function to be executed in state init
// valid return states: STATE_IDLE
state_t do_init(state_data_t *data) {
  state_t next_state = STATE_IDLE;
  
  syslog(LOG_INFO, "[FSM] In state init");
  /* Your Code Here */
  data->count_idle = 0;
  data->count_run = 0;
  
  
  switch (next_state) {
    case STATE_IDLE:
      break;
    default:
      syslog(LOG_WARNING, "[FSM] Cannot pass from init to %s, remaining in this state", state_names[next_state]);
      next_state = NO_CHANGE;
  }
  
  return next_state;
}


// Function to be executed in state idle
// valid return states: NO_CHANGE, STATE_IDLE, STATE_RUN, STATE_STOP
state_t do_idle(state_data_t *data) {
  state_t next_state = NO_CHANGE;
  
  syslog(LOG_INFO, "[FSM] In state idle");
  data->count_idle++;
  if(data->count_idle >= 5) next_state = STATE_RUN;
  
  switch (next_state) {
    case NO_CHANGE:
    case STATE_IDLE:
    case STATE_RUN:
    case STATE_STOP:
      break;
    default:
      syslog(LOG_WARNING, "[FSM] Cannot pass from idle to %s, remaining in this state", state_names[next_state]);
      next_state = NO_CHANGE;
  }
  
  return next_state;
}


// Function to be executed in state run
// valid return states: NO_CHANGE, STATE_IDLE, STATE_RUN
state_t do_run(state_data_t *data) {
  state_t next_state = NO_CHANGE;
  
  syslog(LOG_INFO, "[FSM] In state run");
  /* Your Code Here */
  data->count_run++;
  if (data->count_run >= 5) next_state = STATE_IDLE;
  
  switch (next_state) {
    case NO_CHANGE:
    case STATE_IDLE:
    case STATE_RUN:
      break;
    default:
      syslog(LOG_WARNING, "[FSM] Cannot pass from run to %s, remaining in this state", state_names[next_state]);
      next_state = NO_CHANGE;
  }
  
  return next_state;
}


// Function to be executed in state stop
// valid return states: NO_CHANGE
state_t do_stop(state_data_t *data) {
  state_t next_state = NO_CHANGE;
  
  syslog(LOG_INFO, "[FSM] In state stop");
  /* Your Code Here */
  
  switch (next_state) {
    case NO_CHANGE:
      break;
    default:
      syslog(LOG_WARNING, "[FSM] Cannot pass from stop to %s, remaining in this state", state_names[next_state]);
      next_state = NO_CHANGE;
  }
  
  return next_state;
}


/*  _____                    _ _   _              
 * |_   _| __ __ _ _ __  ___(_) |_(_) ___  _ __   
 *   | || '__/ _` | '_ \/ __| | __| |/ _ \| '_ \
 *   | || | | (_| | | | \__ \ | |_| | (_) | | | | 
 *   |_||_|  \__,_|_| |_|___/_|\__|_|\___/|_| |_| 
 *                                                
 *   __                  _   _                 
 *  / _|_   _ _ __   ___| |_(_) ___  _ __  ___ 
 * | |_| | | | '_ \ / __| __| |/ _ \| '_ \/ __|
 * |  _| |_| | | | | (__| |_| | (_) | | | \__ \
 * |_|  \__,_|_| |_|\___|\__|_|\___/|_| |_|___/
 */    
                                         
// This function is called in 2 transitions:
// 1. from init to idle
// 2. from run to idle
void reset(state_data_t *data) {
  syslog(LOG_INFO, "[FSM] State transition reset");
  /* Your Code Here */
  data->count_idle = 0;
  data->count_run = 0;
}


/*  ____  _        _        
 * / ___|| |_ __ _| |_ ___  
 * \___ \| __/ _` | __/ _ \
 *  ___) | || (_| | ||  __/ 
 * |____/ \__\__,_|\__\___| 
 *                          
 *                                              
 *  _ __ ___   __ _ _ __   __ _  __ _  ___ _ __ 
 * | '_ ` _ \ / _` | '_ \ / _` |/ _` |/ _ \ '__|
 * | | | | | | (_| | | | | (_| | (_| |  __/ |   
 * |_| |_| |_|\__,_|_| |_|\__,_|\__, |\___|_|   
 *                              |___/           
 */

state_t run_state(state_t cur_state, state_data_t *data) {
  state_t new_state = state_table[cur_state](data);
  if (new_state == NO_CHANGE) new_state = cur_state;
  transition_func_t *transition = transition_table[cur_state][new_state];
  if (transition)
    transition(data);
  return new_state == NO_CHANGE ? cur_state : new_state;
};

#ifdef TEST_MAIN
#include <unistd.h>
int main() {
  state_t cur_state = STATE_INIT;
  state_data_t state = {.count_idle = 0 , .count_run = 0};
  openlog("SM", LOG_PID | LOG_PERROR, LOG_USER);
  syslog(LOG_INFO, "Starting SM");
  do {
    cur_state = run_state(cur_state, &state);
    sleep(1);
  } while (cur_state != STATE_STOP);
  run_state(cur_state, &state);
  return 0;
}
#endif