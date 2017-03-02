//
//  ViewController.m
//  Codility Challenges in Objective-C
//
//  Created by Lindsey Rafferty on 3/2/17.
//  Copyright © 2017 Quiver Coding. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


/**
 This method will take a positive NSInteger that is within the range [1..2,147,483,647].

 @param integer An NSInteger that will be converted to a binary representation.
 @return The length of the longest binary gap. Zero will be returned if there is no binary gap.
 */
+ (NSInteger)binaryGap:(NSInteger)integer;

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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Codility Challenges -

+ (NSInteger)binaryGap:(NSInteger)integer {
    NSInteger max = 0;
    NSInteger gap = 0;
    
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

@end
