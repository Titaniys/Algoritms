//
//  SortAlgoritms.m
//  Algoritms
//
//  Created by Вадим Чистяков on 21.06.2018.
//  Copyright © 2018 Вадим Чистяков. All rights reserved.
//

#import "SortAlgoritms.h"

@implementation SortAlgoritms

- (void)example
{
	NSMutableArray *arr = [[NSMutableArray alloc] initWithArray:@[@1, @234, @12, @67234, @11, @1235,@1, @234, @12, @67234, @11, @1235]];
	NSLog(@"%@",[self sortBubble:arr]);
	NSLog(@"%@",[self selectionSort:arr]);
	NSLog(@"%@",[self insertionSort:arr]);
}

//Сортировка пузырьком
- (NSArray *)sortBubble:(NSMutableArray *)unsortedArray
{
	for (int i = 0; i < unsortedArray.count - 1; i++)
	{
		for (int j = i + 1; j < unsortedArray.count; j++)
		{
			if (unsortedArray[i] > unsortedArray[j])
			{
//				[self swap:&unsortedArray[i] with:&unsortedArray[j]];
			}
		}
	}
	return [unsortedArray copy];
}

//Сортировка выбором
- (NSArray *)selectionSort:(NSMutableArray *)unsortedArray
{
	for (int i = 0; i < unsortedArray.count - 1; i++)
	{
		int min = i;
		for (int j = i + 1; j < unsortedArray.count; j++)
		{
			if (unsortedArray[j] < unsortedArray[min])
			{
				min = j;
			}
		}
		NSNumber *temp = unsortedArray[i];
		unsortedArray[i] = unsortedArray[min];
		unsortedArray[min] = temp;
	}
	return [unsortedArray copy];
}

//Cортировка вставками
- (NSArray *)insertionSort:(NSMutableArray *)unsortedArray
{
	for (int i = 0; i < unsortedArray.count; i ++) {
		for (int j = i; j > 0; j --) {
			if (unsortedArray[i] > unsortedArray[j])
			{
				NSNumber *temp = unsortedArray[i];
				unsortedArray[i] = unsortedArray[j];
				unsortedArray[j] = temp;
			}
			else
			{
				break;
			}
		}
	}
	return [unsortedArray copy];
}

- (void)swap:(NSNumber **)a with:(NSNumber **)b
{
	NSNumber *temp = *a;
	*a = *b;
	*b = temp;
}

@end
