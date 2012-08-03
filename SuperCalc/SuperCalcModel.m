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
@synthesize currentNumber = _currentNumber;

- (double)performOperationWithOperand: (double)newOperand
{
    double result;
    
    
    if ([self.operation isEqualToString:@"x"])
    {
        result = self.waitingOperand * newOperand;
    }
    else if ([self.operation isEqualToString:@"/"])
    {
        
        
    }
    else if ([self.operation isEqualToString:@"+"])
    {
        
    }
    else if ([self.operation isEqualToString:@"-"])
    {
        
    }
    else if ([self.operation isEqualToString:@"="])
    {
        
    };
    
    return 0.0;

}

@end
