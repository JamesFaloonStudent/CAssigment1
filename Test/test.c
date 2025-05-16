#include "include/test.h"


void setUp() {}
void tearDown() {}

void testIsEven() {
  TEST_ASSERT_TRUE(isEven(2)); 
  
}
// Main Function 
int main() {
  UNITY_BEGIN();
  RUN_TEST(testIsEven);
  return UNITY_END();

}
