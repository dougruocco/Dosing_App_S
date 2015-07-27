//
//  ViewController.m
//  DosingCalc_iPad
//
//  Created by Douglas Ruocco on 2/8/14.
//  Copyright (c) 2014 Lupin Pharmaceuticals. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self.ScrollView_PI setScrollEnabled:YES];
    [self.ScrollView_PI setContentSize:(CGSizeMake(768, 983))];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ContinueButton:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Lupin Dosing Calc" message:@"After Your Selection, Scroll To The Bottom Of The Page To See All Dosing Information" delegate:self cancelButtonTitle:nil otherButtonTitles:@"Continue", nil];
    [alert show];
}
@end
