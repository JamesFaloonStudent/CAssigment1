#include "../../include/Average.h"


// this finds the sum of a list of numbers and divides it by the size to find the average 
double Average(int list[], int size) {
  double sum = 0;
  for (int i =0; i < size; i++) {
    sum += list[i];
  }
  return sum / size;
}
