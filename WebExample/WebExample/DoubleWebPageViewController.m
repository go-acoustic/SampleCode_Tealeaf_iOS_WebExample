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
@import Tealeaf;
@interface DoubleWebPageViewController ()
@end

@implementation DoubleWebPageViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [_sessionID setText:[[TLFApplicationHelper sharedInstance] currentSessionId]];
    [self createWebViews];
    [self.view addSubview:self.webView1];
    [self.view addSubview:self.webView2];
    [self loadLocalFiles];
}

- (void)createWebViews
{
    self.webView1 = [self createWebView:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.width)];
    self.webView2 = [self createWebView:CGRectMake(0, self.webView1.frame.size.height + 10, self.view.frame.size.width, self.view.frame.size.width)];
}

- (WKWebView*)createWebView:(CGRect)position
{
    WKWebViewConfiguration *theConfiguration = [[WKWebViewConfiguration alloc] init];
    [theConfiguration.preferences setValue:@"TRUE" forKey:@"allowFileAccessFromFileURLs"];
    [theConfiguration setValue:@"TRUE" forKey:@"allowUniversalAccessFromFileURLs"];
    WKWebView* web = [[WKWebView alloc] initWithFrame:position configuration:theConfiguration];
//    self.webView1.navigationDelegate = self;
//    self.webView1.UIDelegate = self;
    return web;
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)loadLocalFiles
{
    [self loadLocalFilesHelper:self.webView1];
    [self loadLocalFilesHelper:self.webView2];
}

- (void)loadLocalFilesHelper:(WKWebView*)web
{
    NSURL *url1 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"embeddedGesturesMenu" ofType:@"html" inDirectory:@"mobile_domcap/"]];
    NSURLRequest *request1 = [NSURLRequest requestWithURL:url1];
    [web loadRequest:request1];
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
