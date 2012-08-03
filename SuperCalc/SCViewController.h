//
//  SCViewController.h
//  SuperCalc
//
//  Created by Phillip Reed on 8/2/12.
//  Copyright (c) 2012 Phillip Reed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SuperCalcModel.h"

@interface SCViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *display;

@property (nonatomic) BOOL typingNumber;

- (IBAction)number:(UIButton *)sender;
- (IBAction)operatorPressed:(UIButton *)sender;

@end
