//
//  ViewController.h
//  DosingCalc_iPad
//
//  Created by Douglas Ruocco on 2/8/14.
//  Copyright (c) 2014 Lupin Pharmaceuticals. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *ContinueButton;
- (IBAction)ContinueButton:(id)sender;

@property (weak, nonatomic) IBOutlet UIScrollView *ScrollView_PI;

@end
