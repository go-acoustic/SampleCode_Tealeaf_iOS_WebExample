//
//  Copyright (C) 2016 Acoustic, L.P. All rights reserved.
//
//  NOTICE: This file contains material that is confidential and proprietary to
//  Acoustic, L.P. and/or other developers. No license is granted under any intellectual or
//  industrial property rights of Acoustic, L.P. except as may be provided in an agreement with
//  Acoustic, L.P. Any unauthorized copying or distribution of content from this file is
//  prohibited.
//

#import "StartViewController.h"

@interface StartViewController ()
- (IBAction)btnSingleWebView:(id)sender;
- (IBAction)btnDoubleView:(id)sender;

@end

@implementation StartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // Turn off screen shots
    //[[TLFCustomEvent sharedInstance] logPrintScreenEvent];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnSingleWebView:(id)sender {
	[self performSegueWithIdentifier:@"singleWebView" sender:sender];
}
- (IBAction)btnDoubleView:(id)sender {
	[self performSegueWithIdentifier:@"doubleWebView" sender:sender];
}
@end
