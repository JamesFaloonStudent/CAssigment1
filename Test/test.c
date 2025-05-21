#include "include/test.h"


void setUp() {}
void tearDown() {}

void testIsEven() {
  TEST_ASSERT_TRUE(isEven(2)); 
  TEST_ASSERT_TRUE(isEven(0));

  
}


void testIsOdd() {
  TEST_ASSERT_FALSE(isEven(1));
}

void testMaxValue() {
  int list[] = {1, 2, 3, 4, 5};
  TEST_ASSERT_EQUAL(5, maxValue(list, SIZE));
}

void testMinValue() {
  int list[] = {1,2,3,4,5};
  TEST_ASSERT_EQUAL(1, minValue(list, SIZE));
}



// Main Function 
int main() {
  UNITY_BEGIN();
  RUN_TEST(testIsEven);
  RUN_TEST(testMaxValue);
  RUN_TEST(testIsOdd);
  RUN_TEST(testMinValue);
  return UNITY_END();

}
