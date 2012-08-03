//
//  SuperCalcModel.m
//  SuperCalc
//
//  Created by Phillip Reed on 8/2/12.
//  Copyright (c) 2012 Phillip Reed. All rights reserved.
//

#import "SuperCalcModel.h"

@implementation SuperCalcModel
@synthesize waitingOperand = _waitingOperand;
@synthesize operation = _operation;

- (double)performOperationWithOperand: (double)newOperand
{
    double result;
    
    
    if ([self.operation isEqualToString:@"x"])
        NSLog(@"Mulitply!!");
    else if ([self.operation isEqualToString:@"/"])
        NSLog(@"Divide!!");
    else if ([self.operation isEqualToString:@"+"])
        NSLog(@"ADD!!");
    else if ([self.operation isEqualToString:@"-"])
        NSLog(@"Subtract!!");
    else if ([self.operation isEqualToString:@"="])
        NSLog(@"Equalize!!");
    
    return 0.0;

}

@end
