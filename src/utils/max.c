#include "../../include/Max.h"

// for every element in the list check to see if it is greater than the current max
int maxValue(int list[], int size) {
  int max = list[0];
  for (int i = 1; i < size; i++) {
    if (list[i] > max) {
      max = list[i];
    }
    
  }
  return max;
  
} 
