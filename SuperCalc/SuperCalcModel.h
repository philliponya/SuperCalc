//
//  SuperCalcModel.h
//  SuperCalc
//
//  Created by Phillip Reed on 8/2/12.
//  Copyright (c) 2012 Phillip Reed. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SuperCalcModel : NSObject
@property (nonatomic) double waitingOperand;
@property (nonatomic, strong) NSString *operation;

- (double)performOperationWithOperand: (double)newOperand;


@end
