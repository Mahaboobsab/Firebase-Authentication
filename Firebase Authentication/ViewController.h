//
//  ViewController.h
//  Firebase Authentication
//
//  Created by Mahaboobsab Nadaf on 20/05/17.
//  Copyright © 2017 NeoRays. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Google/SignIn.h>
@import Firebase;

@import GoogleSignIn;
@interface ViewController : UIViewController<GIDSignInUIDelegate>

@property (strong, nonatomic) IBOutlet UISegmentedControl *signInSelector;

@property (strong, nonatomic) IBOutlet UILabel *signInLabel;
@property (strong, nonatomic) IBOutlet UITextField *emailTextField;
@property (strong, nonatomic) IBOutlet UIButton *signInButton;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@end

