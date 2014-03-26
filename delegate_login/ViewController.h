//
//  ViewController.h
//  delegate_login
//
//  Created by mahesh lad on 26/03/2014.
//  Copyright (c) 2014 mahesh lad. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginViewController.h"

@interface ViewController : UIViewController <logindelegate>
@property (weak, nonatomic) IBOutlet UILabel *loginStatusLabel;

@end
