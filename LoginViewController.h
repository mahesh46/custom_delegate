//
//  LoginViewController.h
//  delegate_login
//
//  Created by mahesh lad on 26/03/2014.
//  Copyright (c) 2014 mahesh lad. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LoginViewController;
@protocol logindelegate <NSObject>

-(void)didselectwith:(LoginViewController *)controller loginstatus:(NSString *) loginstatus;


@end

@interface LoginViewController : UIViewController

@property (nonatomic, weak) id <logindelegate>delegate;

@property (weak, nonatomic) IBOutlet UITextField *namefield;
@property (weak, nonatomic) IBOutlet UITextField *passwordfield;
- (IBAction)submitpress:(id)sender;


@end
