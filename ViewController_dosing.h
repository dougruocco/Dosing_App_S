//
//  ViewController_dosing.h
//  DosingCalc_iPad
//
//  Created by Douglas Ruocco on 2/8/14.
//  Copyright (c) 2014 Lupin Pharmaceuticals. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface ViewController_dosing : UIViewController

<UIPickerViewDataSource, UIPickerViewDelegate, MFMailComposeViewControllerDelegate>

@property (strong, nonatomic) IBOutlet UIPickerView *dosingPicker;

@property (strong, nonatomic) IBOutlet UIImageView *dosingImage;

@property (strong, nonatomic) NSArray * dosing;

@property (strong, nonatomic) IBOutlet UIView *pickerViewContainer;


- (IBAction)showButton:(id)sender;
- (IBAction)SupraxLink:(id)sender;
- (IBAction)EmailButton:(id)sender;


@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;


@end
