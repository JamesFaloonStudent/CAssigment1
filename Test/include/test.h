#ifndef TEST_H
#define TEST_H
#define SIZE 5

// Inluding the necessary libraries 
#include <stdio.h>
#include <stdbool.h>  

// inluding the nessesary functions to test 
#include "../Unity/src/unity.h"
#include "../../include/Sum.h"
#include "../../include/IsPrime.h"
#include "../../include/EvenOdd.h"
#include "../../include/Max.h"
#include "../../include/Min.h"
#include "../../include/Average.h"

// test functions 
void setUp();
void tearDown();
void test_even_odd();
void test_is_prime();
void test_is_max();
void test_is_min();
void test_sum();
void test_average();  
int main();



#endif
