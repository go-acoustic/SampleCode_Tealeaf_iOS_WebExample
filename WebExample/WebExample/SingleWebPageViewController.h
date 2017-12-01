//
//  Licensed Materials - Property of IBM
//  (C) Copyright IBM Corp. 2017
//  US Government Users Restricted Rights - Use, duplication or disclosure
//  restricted by GSA ADP Schedule Contract with IBM Corp.
//

#import <UIKit/UIKit.h>

@interface SingleWebPageViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIWebView *webView1;
@property (weak, nonatomic) IBOutlet UILabel *sessionID;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *leftTopButton;

- (IBAction)back:(id)sender;
@end
