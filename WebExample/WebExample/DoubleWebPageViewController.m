//
//  Licensed Materials - Property of IBM
//  (C) Copyright IBM Corp. 2017
//  US Government Users Restricted Rights - Use, duplication or disclosure
//  restricted by GSA ADP Schedule Contract with IBM Corp.
//

#import "DoubleWebPageViewController.h"
#import "WebViewDelegate.h"
@interface DoubleWebPageViewController ()
{
    BOOL didScrape;
    BOOL webView1DidLoad;
    BOOL webView2DidLoad;
	WebViewDelegate *webDelegate1;
	WebViewDelegate *webDelegate2;
}
@end

@implementation DoubleWebPageViewController

- (void)viewDidLoad
{
    didScrape=NO;
    webView1DidLoad=NO;
    webView2DidLoad=NO;
	webDelegate1=[[WebViewDelegate alloc] init];
	webDelegate2=[[WebViewDelegate alloc] init];
	self.webView1.delegate=webDelegate1;
	self.webView2.delegate=webDelegate2;
    [super viewDidLoad];
    [_sessionID setText:[[TLFApplicationHelper sharedInstance] currentSessionId]];
    [self loadLocalFiles];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)loadLocalFiles
{
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"embeddedGesturesMenu" ofType:@"html" inDirectory:@"mobile_domcap/"]];
    NSURLRequest *request1 = [NSURLRequest requestWithURL:url];
    [_webView1 loadRequest:request1];
    NSURLRequest *request2 = [NSURLRequest requestWithURL:url];
    [_webView2 loadRequest:request2];
}

//-(void)webViewDidFinishLoad:(UIWebView *)webView
//{
////    if (webView==self.webView2)
////        webView2DidLoad=YES;
////    else if (webView==self.webView1)
////        webView1DidLoad=YES;
////    if (webView1DidLoad && webView2DidLoad && !didScrape)
////    {
////        didScrape=YES;
////        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 1 * NSEC_PER_SEC),dispatch_get_main_queue(), ^{
////            [[TLFCustomEvent sharedInstance] logScreenLayoutWithViewController:self];
////        });
////    }
//}
//
//- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
//{
//    return YES;
//}

- (IBAction)back:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
@end
