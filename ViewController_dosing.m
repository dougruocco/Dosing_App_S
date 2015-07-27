//
//  ViewController_dosing.m
//  DosingCalc_iPad
//
//  Created by Douglas Ruocco on 2/8/14.
//  Copyright (c) 2014 Lupin Pharmaceuticals. All rights reserved.
//

#import "ViewController_dosing.h"

@interface ViewController_dosing ()

@end

@implementation ViewController_dosing
@synthesize dosingImage;
//@synthesize dosingImage2;
//@synthesize dosingImage3;
//@synthesize dosingImage4;
@synthesize dosingPicker;
@synthesize dosing = _dosing;

/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/



- (IBAction)SupraxLink:(id)sender
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://supraxrx.com/pdf/Suprax-Final%20PI%20-PDF%20File.pdf"]];
}

- (IBAction)EmailButton:(id)sender
{
    MFMailComposeViewController *mailcontroller = [[MFMailComposeViewController alloc] init];
    [mailcontroller setMailComposeDelegate:self];
    NSString *email = NULL;
    NSString *messageBody = [NSString stringWithFormat:@"Thank you for your interest in the Suprax Dosing Calculator App. We have provided you with two important links:<br/><br/>The first set of links will forward you to the iTunes App Store where you can download the appropriate Suprax Dosing App:<br/><a href=https://itunes.apple.com/us/app/suprax-dosing-calculator/id841026075?mt=8>Click to download the Suprax Dosing App for the iPad</a>""<br/><a href=https://itunes.apple.com/us/app/suprax-dosing-calculator-for/id841558526?mt=8>Click to download the Suprax Dosing App for the iPhone 5/6</a><br/><a href=https://itunes.apple.com/us/app/suprax-dosing-calculator-for/id841571821?mt=8>Click to download the Suprax Dosing App for the iPhone 4</a><br/><br/>The second link directs you to a uniquie Suprax $25 Co-pay Savings Card for printing or to email:<br/><a href=https://webrebate.trialcard.com/coupon/SupraxCoupon/>Click to get Suprax $25 Co-pay Savings Card</a><br/><br/> Sincerely,<br/>Lupin Pharmaceuticals, Inc."];
    NSArray *toAddress = [[NSArray alloc] initWithObjects:email, nil];
    [mailcontroller setToRecipients:toAddress];
    [mailcontroller setSubject:@"Download the Suprax App!"];
    [mailcontroller setMessageBody:messageBody isHTML:YES];
    
    // Present mail view controller on screen
    [self presentViewController:mailcontroller animated:YES completion:NULL];
}

- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    _dosing = [[NSArray alloc] initWithObjects:@"11-16.5lbs/5-5.75kg",@"16.6-22lbs/7.6-10kg",@"22.1-27.5lbs/10.1-12.5kg",@"27.6-45.1lbs/12.6-20kg",@"45.2-61.6lbs/20.6-28kg",@"61.7-72.6lbs/28.1-33kg",@"72.7-88lbs/33.1-40kg",@"88.1-99lbs/40.1-45kg",@"99lbs/45kb and above", nil];
    
    _pickerViewContainer.frame = CGRectMake(0, 2000, 768, 216);
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    //Release any retained subviews of the main view
}


- (void)didReceiveMemoryWarning
{
    [self setDosingImage:nil];
    [self setDosingPicker:nil];
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showButton:(id)sender
{
    _pickerViewContainer.hidden = NO;
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.3];
    _pickerViewContainer.frame = CGRectMake(0, 808, 768, 216);
    [UIView commitAnimations];
    [self.scrollView setScrollEnabled:NO];
    [self.scrollView setContentOffset:CGPointZero animated:YES];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _dosing.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [_dosing objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    //Create our UIImage objects
    UIImage * firstImage = [UIImage imageNamed:@"Dosing_1_1.png"];
//    UIImage * firstImage2 = [UIImage imageNamed:@"dose_1.1.png"];
//    UIImage * firstImage3 = [UIImage imageNamed:@"dose_1.2.png"];
//    UIImage * firstImage4 = [UIImage imageNamed:@"dose_1.3.png"];
    UIImage * secondImage = [UIImage imageNamed:@"Dosing_2_1.png"];
//    UIImage * secondImage2 = [UIImage imageNamed:@"dose_2.1.png"];
//    UIImage * secondImage3 = [UIImage imageNamed:@"dose_2.2.png"];
//    UIImage * secondImage4 = [UIImage imageNamed:@"dose_2.3.png"];
    UIImage * thirdImage = [UIImage imageNamed:@"Dosing_3_1.png"];
//    UIImage * thirdImage2 = [UIImage imageNamed:@"dose_3.1.png"];
//    UIImage * thirdImage3 = [UIImage imageNamed:@"dose_3.2.png"];
//    UIImage * thirdImage4 = [UIImage imageNamed:@"dose_3.3.png"];
    UIImage * fourthImage = [UIImage imageNamed:@"Dosing_4_1.png"];
//    UIImage * fourthImage2 = [UIImage imageNamed:@"dose_4.1.png"];
//    UIImage * fourthImage3 = [UIImage imageNamed:@"dose_4.2.png"];
//    UIImage * fourthImage4 = [UIImage imageNamed:@"dose_4.3.png"];
    UIImage * fifthImage = [UIImage imageNamed:@"Dosing_5_1.png"];
//    UIImage * fifthImage2 = [UIImage imageNamed:@"dose_5.1.png"];
//    UIImage * fifthImage3 = [UIImage imageNamed:@"dose_5.2.png"];
//    UIImage * fifthImage4 = [UIImage imageNamed:@"dose_5.3.png"];
    UIImage * sixthImage = [UIImage imageNamed:@"Dosing_6_1.png"];
//    UIImage * sixthImage2 = [UIImage imageNamed:@"dose_6.1.png"];
//    UIImage * sixthImage3 = [UIImage imageNamed:@"dose_6.2.png"];
//    UIImage * sixthImage4 = [UIImage imageNamed:@"dose_6.3.png"];
    UIImage * seventhImage = [UIImage imageNamed:@"Dosing_7_1.png"];
//    UIImage * seventhImage2 = [UIImage imageNamed:@"dose_7.1.png"];
//    UIImage * seventhImage3 = [UIImage imageNamed:@"dose_7.2.png"];
//    UIImage * seventhImage4 = [UIImage imageNamed:@"dose_7.3.png"];
    UIImage * eigthImage = [UIImage imageNamed:@"Dosing_8_1.png"];
//    UIImage * eigthImage2 = [UIImage imageNamed:@"dose_8.1.png"];
//    UIImage * eigthImage3 = [UIImage imageNamed:@"dose_8.2.png"];
//    UIImage * eigthImage4 = [UIImage imageNamed:@"dose_8.3.png"];
    UIImage * ninthImage = [UIImage imageNamed:@"Dosing_9_1.png"];
//    UIImage * ninthImage2 = [UIImage imageNamed:@"dose_9.1.png"];
//    UIImage * ninthImage3 = [UIImage imageNamed:@"dose_9.2.png"];
//    UIImage * ninthImage4 = [UIImage imageNamed:@"dose_9.3.png"];
    _pickerViewContainer.hidden = YES;
    [self.scrollView setScrollEnabled:YES];
    [self.scrollView setContentSize:(CGSizeMake(768, 1544))];
    

    switch (row) {
        case 0:
            dosingImage.image = firstImage;
            break;
        case 1:
            dosingImage.image = secondImage;
            break;
        case 2:
            dosingImage.image = thirdImage;

            break;
        case 3:
            dosingImage.image = fourthImage;

            break;
        case 4:
            dosingImage.image = fifthImage;

            break;
        case 5:
            dosingImage.image = sixthImage;

            break;
        case 6:
            dosingImage.image = seventhImage;

            break;
        case 7:
            dosingImage.image = eigthImage;

            break;
        case 8:
            dosingImage.image = ninthImage;
            break;
        default:
            dosingImage.image = firstImage;
            break;
    }
}


@end
