/******************************************************************************
 * Copyright (C) 2017 by Alex Fosdick - University of Colorado
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are 
 * permitted to modify this and use it to learn about the field of embedded
 * software. Alex Fosdick and the University of Colorado are not liable for any
 * misuse of this material. 
 *
 *****************************************************************************/
/**
 * @file stats.c 
 * @brief finding statistics of an array and sorting an array
 *
 * This file contains statistical calculations of an array and 
 * sorting. 
 *
 * @author Yasin Soyaslan
 * @date 11.08.2019
 *
 */



#include <stdio.h>
#include "stats.h"

/* Size of the Data Set */
#define SIZE (40)

void main() {

  unsigned char test[SIZE] = { 34, 48, 125, 126, 127, 128, 129,  167,
                              114, 88,   45,  76, 123,  87,  25,  23,
                              200, 122, 150, 90,   92,  87, 177, 244,
                              201,   6,  12,  60,   8,   2,   5,  67,
                                7,  87, 250, 230,  99,   3, 100,  90};


print_array(test,SIZE);
print_statistics(test,SIZE);

}


void print_statistics(unsigned char test[],unsigned char lenght)
{
	printf("Maximum value in the array: %u\n",find_maximum(test,lenght));

	printf("Minimum value in the array: %u\n",find_minimum(test,lenght));

	printf("Mean value of the array: %u\n",find_mean(test,lenght));

	printf("Median value of the  array: %u\n",find_median(test,lenght));

	printf("Sorted array: ");
	print_array(test,lenght);
}
unsigned char find_median(unsigned char arr[], unsigned char lenght)
{
	
	unsigned char med;

	sort_array(arr,lenght);
	if(lenght%2 != 0)
	{
		med = arr[(lenght/2)-1];
		return med;
	}
	else
	{
		
		med =(arr[lenght/2] + arr[(lenght/2)-1])/2;
		return med;

	}

}

unsigned char find_mean(unsigned char arr[], unsigned char lenght)
{
	int sum=0;
	unsigned char i;

	for(i=0;i<lenght;i++)
	{
		sum+= arr[i];
	}

	return (sum/lenght);
}

unsigned char find_minimum(unsigned char arr[], unsigned char lenght)
{
	unsigned char min,i;
	min = arr[0];
	
	for(i=1;i<lenght;i++)
	{
		if(arr[i]<min)
			min = arr[i];
	}

	return min;
}

void print_array(unsigned char arr[], unsigned char lenght)
{
	unsigned char i;

	printf("Array values:");
	for(i=0;i<lenght;i++)
	{
		printf("%u ",arr[i]);
	}
	printf("\n");
}

unsigned char find_maximum(unsigned char arr[], unsigned char lenght)
{
	unsigned char max,i;
	max = arr[0];
	
	for(i=1;i<lenght;i++)
	{
		if(arr[i]>max)
			max = arr[i];
	}

	return max;
}

void sort_array(unsigned char arr[], unsigned char lenght)
{
	unsigned char i,j;
	unsigned char temp;

	for(i=1;i<lenght;i++)
	{
		for(j=0;j<lenght;j++)
		{
			if(arr[j]<arr[j+1])
			{
				temp = arr[j];
				arr[j]= arr[j+1];
				arr[j+1] = temp;
			}
		}
	}
}
