//
// Copyright (C) 2020 Acoustic, L.P. All rights reserved.
//
// NOTICE: This file contains material that is confidential and proprietary to
// Acoustic, L.P. and/or other developers. No license is granted under any intellectual or
// industrial property rights of Acoustic, L.P. except as may be provided in an agreement with
// Acoustic, L.P. Any unauthorized copying or distribution of content from this file is
// prohibited.
//

#import <UIKit/UIKit.h>

@interface DoubleWebPageViewController : UIViewController <WKNavigationDelegate, WKScriptMessageHandler>

@property (strong, nonatomic) IBOutlet WKWebView *webView1;
@property (strong, nonatomic) IBOutlet WKWebView *webView2;
@property (weak, nonatomic) IBOutlet UILabel *sessionID;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *leftTopButton;

- (IBAction)back:(id)sender;
@end

