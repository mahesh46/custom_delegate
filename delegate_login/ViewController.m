//
//  ViewController.m
//  delegate_login
//
//  Created by mahesh lad on 26/03/2014.
//  Copyright (c) 2014 mahesh lad. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"loginsegue"]){
        LoginViewController *vc = [segue destinationViewController];
        vc.delegate = self;
        
    }
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) didselectwith:(LoginViewController *)controller loginstatus:(NSString *)loginstatus
{
    [controller dismissViewControllerAnimated:YES completion:nil];
    self.loginStatusLabel.text = loginstatus;
    
}

@end
