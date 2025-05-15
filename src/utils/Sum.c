#include "../../include/Sum.h"

int Sum(int list[], int size) {
  int sum = 0;
  for (int i =0; i < size; i++) {
    sum += list[i];
  }
  return sum;
}
