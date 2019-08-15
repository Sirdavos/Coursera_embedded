/******************************************************************************
 * Copyright (C) 2017 by Alex Fosdick - University of Colorado
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maunsigned charain this copyright. Users are 
 * permitted to modify this and use it to learn about the field of embedded
 * software. Alex Fosdick and the University of Colorado are not liable for any
 * misuse of this material. 
 *
 *****************************************************************************/
/**
 * @file stats.h
 * @brief finds statistic of array and sort array
 *
 * This file contains a number of function declaration which will be 
 * used in finding statistic of an array like finding maximum value 
 * in an array or calculating mean value. 
 *
 * This file also contains sort function which will sort given array 
 * from maximum value to minimum. Maximum value will be located in first
 * index.
 *
 * @author Yasin Soyaslan
 * @date 11.08.2019
 *
 */
#ifndef __STATS_H__
#define __STATS_H__

/**
 * @brief Prints the statistic of function
 *
 * This function will prists the statistic of an array including minimum
 * maximum, mean and median value
 *
 * @param no input
 * @return no return 
 *
 */
void print_statistics(unsigned char arr[], unsigned char lenght);

/**
 * @brief Prints the array 
 *
 * This function takes an array of data and lenght, then prints the 
 * array to the screen
 *
 * @param unsigned char array[] and unsigned char lenght 
 * @return no return
 *
 */
void print_array(unsigned char arr[], unsigned char lenght);

/**
 * @brief finds the median value of an array 
 *
 * This function will finds the median value of an array and returns it
 *
 * @param unsigned char array[] and unsigned char lenght of array 
 * @return unsigned char median value of array
 *
 */
unsigned char find_median(unsigned char arr[], unsigned char lenght);

/**
 * @brief finds the mean value of an array 
 *
 * This function will finds the mean value of an array and returns it
 *
 * @param unsigned char array[] and unsigned char lenght of array 
 * @return unsigned char mean value of array
 *
 */
unsigned char find_mean(unsigned char arr[], unsigned char lenght);

/**
 * @brief finds the maximum value of an array 
 *
 * This function will finds the maximum value of an array and returns it
 *
 * @param unsigned char array[] and unsigned char lenght of array 
 * @return unsigned char maximum value of array
 *
 */
unsigned char find_maximum(unsigned char arr[], unsigned char lenght);

/**
 * @brief finds the minimum value of an array 
 *
 * This function will finds the minimum value of an array and returns it
 *
 * @param unsigned char array[] and unsigned char lenght of array 
 * @return unsigned char minimum value of array
 *
 */
unsigned char find_minimum(unsigned char arr[], unsigned char lenght);

/**
 * @brief sorts the array values from maximum to minimum 
 *
 * This function will sort array of elements from maximum value
 * to minimum. This maximum value of array must be the very first
 * element.
 *
 * @param unsigned char array[] and unsigned char lenght of array 
 * @return no return
 *
 */
void  sort_array(unsigned char arr[], unsigned char lenght);

#endif /* __STATS_H__ */
