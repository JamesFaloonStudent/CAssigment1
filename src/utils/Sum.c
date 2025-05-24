/*
* James Faloon 2025
*/
#include "../../include/Sum.h"

// add every number in the list to variable sum and return the sum 
int Sum(int list[], int size) {
  int sum = 0;
  for (int i =0; i < size; i++) {
    sum += list[i];
  }
  return sum;
}
