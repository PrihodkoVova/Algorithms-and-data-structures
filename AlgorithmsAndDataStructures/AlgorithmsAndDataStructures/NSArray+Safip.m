//
//  NSArray+Safip.m
//  AlgorithmsAndDataStructures
//
//  Created by Vova on 5/2/17.
//  Copyright © 2017 Vova. All rights reserved.
//

#import "NSArray+Safip.h"

@implementation NSArray(Safip)

#pragma mark - Quick Sort

- (NSArray *)quickSort
{
    NSMutableArray *result = [self mutableCopy];
    
    [self quickSortArray:result startPosition:0 endPosition:result.count - 1];
    
    return result;
}

- (void)quickSortArray:(NSMutableArray *)array startPosition:(NSUInteger)start endPosition:(NSUInteger)end
{
    if (start < end)
    {
        NSUInteger position = [self sortArray:array startPosition:start endPosition:end];
        
        [self quickSortArray:array startPosition:start endPosition:position - 1];
        [self quickSortArray:array startPosition:position + 1 endPosition:end];
    }
}

- (NSUInteger)sortArray:(NSMutableArray *)array startPosition:(NSUInteger)start endPosition:(NSUInteger)end
{
    NSNumber *pivot = array[end];
    NSInteger index = start - 1;
    
    for (NSUInteger i = start; i < end; i++)
    {
        if (array[i] <= pivot)
        {
            index++;
            [array exchangeObjectAtIndex:index withObjectAtIndex:i];
        }
    }
    
    [array exchangeObjectAtIndex:index + 1 withObjectAtIndex:end];

    return index + 1;
}

@end
