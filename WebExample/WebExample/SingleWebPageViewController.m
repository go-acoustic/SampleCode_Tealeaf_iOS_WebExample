//
//  Licensed Materials - Property of IBM
//  (C) Copyright IBM Corp. 2017
//  US Government Users Restricted Rights - Use, duplication or disclosure
//  restricted by GSA ADP Schedule Contract with IBM Corp.
//

#import "SingleWebPageViewController.h"

@interface SingleWebPageViewController ()
{
	BOOL didScrape;
	BOOL webView1DidLoad;
}
@end

@implementation SingleWebPageViewController

- (void)viewDidLoad
{
	didScrape=NO;
	webView1DidLoad=NO;

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
	NSString *path = [[NSBundle mainBundle] pathForResource:@"embeddedGesturesMenu" ofType:@"html" inDirectory:@"/mobile_domcap/" ];
	if (path)
	{
		NSURL *url = [NSURL fileURLWithPath:path];
		NSURLRequest *request1 = [NSURLRequest requestWithURL:url];
		[_webView1 loadRequest:request1];
	}
}

-(void)webViewDidFinishLoad:(UIWebView *)webView
{
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
	return YES;
}

- (IBAction)back:(id)sender
{
	[self.navigationController popViewControllerAnimated:YES];
}
@end
