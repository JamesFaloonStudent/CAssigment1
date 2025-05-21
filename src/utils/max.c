#include "../../include/Max.h"


int maxValue(int list[], int size) {
  int max = list[0];
  for (int i = 1; i < size; i++) {
    if (list[i] > max) {
      max = list[i];
    }
    
  }
  return max;
  
} 
