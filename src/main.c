#include "../include/Main.h"



int main() {
  // Initialize list Variables 
  int userSize;
  int list[SIZE];

  // ask user the size of the list 
  printf("Enter how big you want the list to be with a limit of %d : ", SIZE);
  scanf("%d", &userSize);


  // Add elements to the list 
  for (int i = 0; i < userSize; i++) {
    printf("Enter the %d element in the list: ", i + 1);
    scanf("%d", &list[i]);
  }

  
  // Header of chart
  printf("SR\t");
  printf("Number\t");
  printf("Prime\t");
  printf("Odd/Even\t");
  printf("Min Max\t");
  printf("\n");

  // Loop through the list 
  for (int i = 0; i < userSize; i++) {
    printf("%d\t", i + 1);
    printf("%d\t", list[i]);
    printf("%s\t", isPrime(list[i]) ? "Yes" : "No");
    printf("%s\t\t", isEven(list[i]) ? "Even" : "Odd");
    printf("%s\t", "Test");
    printf("\n");
  }

  printf("Sum\t %d\n", Sum(list, userSize));
  printf("Average\t %d\n", Average(list, userSize));

}
