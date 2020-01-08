//
// Copyright (C) 2020 Acoustic, L.P. All rights reserved.
//
// NOTICE: This file contains material that is confidential and proprietary to
// Acoustic, L.P. and/or other developers. No license is granted under any intellectual or
// industrial property rights of Acoustic, L.P. except as may be provided in an agreement with
// Acoustic, L.P. Any unauthorized copying or distribution of content from this file is
// prohibited.
//

#import "DoubleWebPageViewController.h"
@interface DoubleWebPageViewController ()
{
    BOOL didScrape;
    BOOL webView1DidLoad;
    BOOL webView2DidLoad;
}
@end

@implementation DoubleWebPageViewController

- (void)viewDidLoad
{
    didScrape=NO;
    webView1DidLoad=NO;
    webView2DidLoad=NO;
    [super viewDidLoad];
    WKWebViewConfiguration *theConfiguration1 = [[WKWebViewConfiguration alloc] init];
    [theConfiguration1.preferences setValue:@"TRUE" forKey:@"allowFileAccessFromFileURLs"];
    [theConfiguration1 setValue:@"TRUE" forKey:@"allowUniversalAccessFromFileURLs"];
    self.webView1 = [[WKWebView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.width) configuration:theConfiguration1];
    
    WKWebViewConfiguration *theConfiguration2 = [[WKWebViewConfiguration alloc] init];
    [theConfiguration2.preferences setValue:@"TRUE" forKey:@"allowFileAccessFromFileURLs"];
    [theConfiguration2 setValue:@"TRUE" forKey:@"allowUniversalAccessFromFileURLs"];
    self.webView2 = [[WKWebView alloc] initWithFrame:CGRectMake(0, self.webView1.frame.size.height + 10, self.view.frame.size.width, self.view.frame.size.width) configuration:theConfiguration1];

    [_sessionID setText:[[TLFApplicationHelper sharedInstance] currentSessionId]];
    [self loadLocalFiles];
    [self.view addSubview:self.webView1];
    [self.view addSubview:self.webView2];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)loadLocalFiles
{
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"embeddedGesturesMenu" ofType:@"html" inDirectory:@"mobile_domcap/"]];
    NSURLRequest *request1 = [NSURLRequest requestWithURL:url];
    [self.webView1 loadRequest:request1];
    NSURLRequest *request2 = [NSURLRequest requestWithURL:url];
    [self.webView2 loadRequest:request2];
}

- (IBAction)back:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)userContentController:(nonnull WKUserContentController *)userContentController didReceiveScriptMessage:(nonnull WKScriptMessage *)message {
}

- (void)encodeWithCoder:(nonnull NSCoder *)coder {
}

- (void)traitCollectionDidChange:(nullable UITraitCollection *)previousTraitCollection {
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(nonnull id<UIContentContainer>)container {
}

- (CGSize)sizeForChildContentContainer:(nonnull id<UIContentContainer>)container withParentContainerSize:(CGSize)parentSize {
    return CGSizeMake(parentSize.width, parentSize.height);
}

- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(nonnull id<UIContentContainer>)container {
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(nonnull id<UIViewControllerTransitionCoordinator>)coordinator {
}

- (void)willTransitionToTraitCollection:(nonnull UITraitCollection *)newCollection withTransitionCoordinator:(nonnull id<UIViewControllerTransitionCoordinator>)coordinator {
}

- (void)didUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context withAnimationCoordinator:(nonnull UIFocusAnimationCoordinator *)coordinator {
}

- (void)setNeedsFocusUpdate {
}

- (BOOL)shouldUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context {
    return YES;
}

- (void)updateFocusIfNeeded {
}

@end
