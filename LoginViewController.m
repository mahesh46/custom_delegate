//
//  LoginViewController.m
//  delegate_login
//
//  Created by mahesh lad on 26/03/2014.
//  Copyright (c) 2014 mahesh lad. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)submitpress:(id)sender {
    
    [_namefield resignFirstResponder];
    [_passwordfield resignFirstResponder];
    
    NSString * status = @"Access Denied"  ;
  
          
     if ([_namefield.text isEqualToString:@"admin"] && [_passwordfield.text isEqualToString:@"pwd"])
    {
        status = @"Access Granted" ;
    }
    
    
    [self.delegate didselectwith:self loginstatus:status];
    
}
@end
