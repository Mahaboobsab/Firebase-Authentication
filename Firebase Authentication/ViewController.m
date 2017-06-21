//
//  ViewController.m
//  Firebase Authentication
//
//  Created by Mahaboobsab Nadaf on 20/05/17.
//  Copyright © 2017 NeoRays. All rights reserved.
//

#import "ViewController.h"
#import <FirebaseAuth/FirebaseAuth.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [GIDSignIn sharedInstance].uiDelegate = self;
    
    // Uncomment to automatically sign in the user.
    //[[GIDSignIn sharedInstance] signInSilently];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)selectButton:(id)sender {
    
//    [[FIRAuth auth] signInWithEmail:_emailTextField.text
//                           password:_passwordTextField.text
//                         completion:^(FIRUser *user, NSError *error) {
//                             NSLog(@"%@ user",user);
//                             NSLog(@"%@ error",error);
//                             
//                             if (user) {
//                                 NSLog(@"User Success");
//                             }
//                             
//                             if (!user) {
//                                 NSLog(@"User Failure");
//                             }
//                         }];
    
    [[FIRAuth auth]createUserWithEmail:self.emailTextField.text password:self.passwordTextField.text completion:^(FIRUser * _Nullable user, NSError * _Nullable error) {
        NSLog(@"user %@",user);
        NSLog(@"error %@",error);
    }];
    
}
- (IBAction)SIGNIN:(id)sender {
    
     [[GIDSignIn sharedInstance] signIn];
}


@end
