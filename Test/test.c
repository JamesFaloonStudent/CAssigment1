/*
* James Faloon 2025 Test file 
*
*
*
*
*/


#include "include/test.h"


void setUp() {}
void tearDown() {}

//// Test Function 1 - Even Odd Function
// Test one - Is Even 
// Test two - Is Odd 
// Test three - is 0 
void test_even_odd() {
  int even = 4;
  int odd = 1;
  int boundary = 0;

  TEST_ASSERT_TRUE(isEven(even));
  TEST_ASSERT_FALSE(isEven(odd));
  TEST_ASSERT_TRUE(isEven(boundary));

}

//// Test Function 2 - isPrime Function 
void test_is_prime() {
  int prime = 7;
  int notPrime = 8;
  int boundary = 0; 
  int two = 2;
  TEST_ASSERT_TRUE(isPrime(prime));
  TEST_ASSERT_FALSE(isPrime(notPrime));
  TEST_ASSERT_TRUE(isPrime(boundary));
  TEST_ASSERT_TRUE(isPrime(two));
}


//// Test Function 3 - test maxValue Function  
void test_is_max() {
  int goodArray[] = {5,4,3,2,1};
  int boundaryArray1[] = {5,4,3,2,5};
  int boundaryArray2[] = {0,0,0,0,0};

  TEST_ASSERT_EQUAL(5, maxValue(goodArray, SIZE));
  TEST_ASSERT_EQUAL(5, maxValue(boundaryArray1, SIZE));
  TEST_ASSERT_EQUAL(0, maxValue(boundaryArray2, SIZE));
}

//// Test Function 4 - test minValue Function 
void test_is_min() {
  int goodArray[] = {5,4,3,2,1};
  int boundaryArray1[] = {2,4,3,2,5};
  int boundaryArray2[] = {0,0,0,0,0};

  TEST_ASSERT_EQUAL(1, minValue(goodArray, SIZE));
  TEST_ASSERT_EQUAL(2, minValue(boundaryArray1, SIZE));
  TEST_ASSERT_EQUAL(0, minValue(boundaryArray2, SIZE));  

} 

//// Test Function 5 - test Sum Function 
void test_sum() {
  int goodArray[] = {5,4,3,2,1};
  int boundaryArray[] = {0,0,0,0,0};

  TEST_ASSERT_EQUAL(15, Sum(goodArray, SIZE));
  TEST_ASSERT_EQUAL(0, Sum(boundaryArray, SIZE));

}

//// Test Function 6 - test average Function 
void test_average() {
  int goodArray[] = {5,4,3,2,1};
  int boundaryArray[] = {0,0,0,0,0};

  TEST_ASSERT_EQUAL(3, Average(goodArray, SIZE));
  TEST_ASSERT_EQUAL(0, Average(boundaryArray, SIZE)); 
}




// Run all Tests  
int main() {
  UNITY_BEGIN();
  RUN_TEST(test_even_odd);
  RUN_TEST(test_is_prime);
  RUN_TEST(test_is_max);
  RUN_TEST(test_is_min);
  RUN_TEST(test_sum);
  RUN_TEST(test_average);
 return UNITY_END();

}
