//
//  ViewController.m
//  MySafari
//
//  Created by roger.tan on 13/7/15.
//  Copyright (c) 2015 iKompass. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () 
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UITextField *urlTextField;
@property (weak, nonatomic) IBOutlet UIButton *onBackButtonPressed;
@property (weak, nonatomic) IBOutlet UIButton *onForwardButtonPressed;

@property (weak, nonatomic) IBOutlet UIButton *onReloadButtonPressed;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.onBackButtonPressed.enabled=NO;
    self.onForwardButtonPressed.enabled=NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

-(void)webViewDidStartLoad:(UIWebView *)webView{
    [UIApplication sharedApplication].networkActivityIndicatorVisible =YES;
    
}

-(void)webViewDidFinisLoad:(UIWebView *)webView{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    NSString *urlTextField = textField.text;
    NSURL *url =[NSURL URLWithString:urlTextField];
    NSURLRequest*request = [NSURLRequest requestWithURL:url];
    
    
    [self.webView loadRequest:request];
    
    [textField resignFirstResponder];
    
    return YES;
}

- (IBAction)onBackButtonPressed:(UIButton *)sender {
        
    if ([self.webView canGoBack]) {
        [self.webView goBack];
    }
    
}

- (IBAction)onForwardButtonPressed:(UIButton *)sender {
    
    if ([self.webView canGoForward]) {
        [self.webView goForward];
    }
}

//-(IBAction)onReloadButtonPressed:(UIButton *)sender {

 //    [self doLoadWebPage:self.urlTextField.text];
//}



//- (IBAction)viewWillDisappear:(BOOL)animated{
 //   if ( [self.webView loading] ) {
 //       [self.webView stopLoading];
 //   }
 //   self.webView.delegate = nil;    // disconnect the delegate as the webview is hidden
 //   [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
//}




@end
