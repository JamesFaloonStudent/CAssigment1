#include "include/test.h"


void setUp() {}
void tearDown() {}

void testIsEven() {
  TEST_ASSERT_TRUE(isEven(2)); 
  TEST_ASSERT_TRUE(isEven(0));

  
}


void testIsOdd() {
  TEST_ASSERT_TRUE(isOdd(1));
}

void testMaxValue() {
  int list[] = {1, 2, 3, 4, 5};
  TEST_ASSERT_EQUAL(5, maxValue(list, SIZE));
}



// Main Function 
int main() {
  UNITY_BEGIN();
  RUN_TEST(testIsEven);
  RUN_TEST(testMaxValue);
  return UNITY_END();

}
