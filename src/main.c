#include "../include/Main.h"



int main() {
  int list[] = {1, 2, 3, 4, 5};
  int size = sizeof(list) / sizeof(list[0]);

  // Header of chart
  printf("SR\t");
  printf("Number\t");
  printf("Prime\t");
  printf("Odd/Even\t");
  printf("Min Max\t");
  printf("\n");

  // Loop through the list 
  for (int i = 0; i < size; i++) {
    printf("%d\t", i + 1);
    printf("%d\t", list[i]);
    printf("%s\t", isPrime(list[i]) ? "Yes" : "No");
    printf("%s\t", isEven(list[i]) ? "Even" : "Odd");
    printf("%s\t", "Test");
    printf("\n");
  }
}
