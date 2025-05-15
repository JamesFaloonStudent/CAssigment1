#include "../../include/IsPrime.h"

// This function checks if a number is prime
bool isPrime(int number) {
  if (number <= 3) {
    return true;
  }
  int half = number / 2;
  for (int i = 2; i <= half; i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;


}
