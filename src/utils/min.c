#include "../../include/Min.h"


// for every element in the list check to see if it is less than the current min 
int minValue(int list[], int size) {
  int min = list[0];
  for (int i = 1; i < size; i++) {
    if (min > list[i]) {
      min = list[i];
    }
  }

  return min;
}
