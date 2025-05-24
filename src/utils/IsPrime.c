#include "../../include/IsPrime.h"

// This function checks if a number is prime
bool isPrime(int number) {
  // if the number is less than or equal to 3 it is prime 
  if (number <= 3) {
    return true;
  }

  // else modulus the number by every number half of the number if it is equal to 0 then it is not prime 
  int half = number / 2;
  for (int i = 2; i <= half; i++) {
    if (number % i == 0) {
      return false;
    }
  }

  // if the number made it though loop then it is prime
  return true;


}
