//
//  AppDelegate.h
//  Firebase Authentication
//
//  Created by Mahaboobsab Nadaf on 20/05/17.
//  Copyright © 2017 NeoRays. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GoogleSignIn/GoogleSignIn.h>
#import <Google/Core.h>
@import Firebase;
@import GoogleSignIn;



@interface AppDelegate : UIResponder <UIApplicationDelegate,GIDSignInDelegate>

@property (strong, nonatomic) UIWindow *window;


@end

