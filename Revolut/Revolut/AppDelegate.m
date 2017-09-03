//
//  AppDelegate.m
//  Revolut
//
//  Created by Evgeniy Akhmerov on 02/09/2017.
//  Copyright © 2017 Evgeniy Akhmerov. All rights reserved.
//

#import "AppDelegate.h"
#import "RVFetchManager.h"

@implementation AppDelegate

#pragma mark - Protocol conformance
#pragma mark UIApplicationDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [[RVFetchManager shared] activate];
    
    return YES;
}

@end
