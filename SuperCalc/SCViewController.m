//
//  SCViewController.m
//  SuperCalc
//
//  Created by Phillip Reed on 8/2/12.
//  Copyright (c) 2012 Phillip Reed. All rights reserved.
//

#import "SCViewController.h"
#import "SuperCalcModel.h"


@interface SCViewController ()

@end

@implementation SCViewController
@synthesize display;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.typingNumber = NO;
    self.model = [[SuperCalcModel alloc] init];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setDisplay:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)number:(UIButton *)sender {
    // If the typing number variable is YES
    if (self.typingNumber){
        NSString *newDisplay = [self.display.text stringByAppendingFormat:@"%@", sender.titleLabel.text];
        self.display.text = newDisplay;
    }
    // Otherwise if the typing number variable is NO
    else {
        self.display.text = sender.titleLabel.text;
        self.typingNumber = YES;
    }
}


- (IBAction)operatorPressed:(UIButton *)sender {
    
    NSString *operator = sender.titleLabel.text;
    
    if (self.typingNumber)
    {
        if (operator isEqualToString:@"="))
        {
            double result = [self.model performOperationWithOperand];
            [currentNumber ;]
            [self.model performOperationWithOperand: currentNumber];
            
        } else
        {
            self.model.watiingOperand = currentNumber;
            self.model.operation = operator; 
        }
        double currentNumber = [self.display.text doubleValue];
        
        self.model.waitingOperand = currentNumber;
        self.model.operation = operator;
        
        NSLog(@"CurrentNumber %f:, currentNumber)");
        
        self.typingNumber = NO;
        
    }
    
    
    /*NSString *newDisplay = [self.display.text stringByAppendingFormat:@"%@", sender.titleLabel.text];
    self.display.text = newDisplay;
     */
    
    
//    
//    if ([operator isEqualToString:@"x"])
//        NSLog(@"Mulitply!!");
//    else if ([operator isEqualToString:@"/"])
//        NSLog(@"Divide!!");
//    else if ([operator isEqualToString:@"+"])
//        NSLog(@"ADD!!");
//    else if ([operator isEqualToString:@"-"])
//        NSLog(@"Subtract!!");
//    else if ([operator isEqualToString:@"="])
//        NSLog(@"Equalize!!");
    
}
@end
