#include "../../include/Average.h"

int Average(int list[], int size) {
  int sum = 0;
  for (int i =0; i < size; i++) {
    sum += list[i];
  }
  return sum / size;
}
