//
//  ViewController.m
//  Codility Challenges in Objective-C
//
//  Created by Kevin E. Rafferty II on 3/2/17.
//  Copyright © 2017 Quiver Coding. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

/**
 This method will take a positive NSInteger that is within the range [1..2,147,483,647].

 @param integer An NSInteger that will be converted to a binary representation.
 @return The length of the longest binary gap. Zero will be returned if there is no binary gap.
 */
+ (int)binaryGap:(int)integer;

/**
 This method will take an NSMutableArray that contains an odd number of elements within the range [1..1,000,000,000].

 @param array An NSMutableArray containing an odd number of elements
 @return The value of the element that has been left unpaired
 */
+ (int)oddOccurrencesInArray:(NSArray *)array;

@end

@implementation ViewController

#pragma mark - View Life Cycle -

- (void)viewDidLoad {
    [super viewDidLoad];
        
    NSLog(@"Binary Gap is - %ld", (long)[ViewController binaryGap:9]);
    NSLog(@"Binary Gap is - %ld", (long)[ViewController binaryGap:15]);
    NSLog(@"Binary Gap is - %ld", (long)[ViewController binaryGap:20]);
    NSLog(@"Binary Gap is - %ld", (long)[ViewController binaryGap:529]);
    NSLog(@"Binary Gap is - %ld", (long)[ViewController binaryGap:1610612737]);
    
    NSArray *testArray = @[@9, @3, @9, @3, @9, @7, @9];
    
    NSLog(@"Odd occurence in the Array is - %ld", (long)[ViewController oddOccurrencesInArray:testArray]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Codility Challenges -

+ (int)binaryGap:(int)integer {
    int max = 0;
    int gap = 0;
    
    // If the integer is zero or negative we return immediately
    if (integer == 0 || integer < 0) {
        return 0;
    }
    
    // Starting from the right side of the binary we skip all zeroes until we come across a one
    while ((integer % 2) == 0) {
        integer /= 2;
    }
    
    while (integer > 0) {
        if ((integer % 2) == 0) {
            gap++;
        } else {
            if (gap > max) {
                max = gap;
            }
            
            gap = 0;
        }
        
        integer /= 2;
    }
    
    return max;
}

+ (int)oddOccurrencesInArray:(NSArray *)array {
    int oddElement = 0;
    
    if (array && [array count] > 0) {
        for (int i = 0; i < [array count]; i++) {
            oddElement = oddElement ^ [[array objectAtIndex:i] intValue];
        }
    } else {
        NSLog(@"The array is either empty or invalid");
        
        oddElement = -1;
    }
    
    return oddElement;
}

@end
