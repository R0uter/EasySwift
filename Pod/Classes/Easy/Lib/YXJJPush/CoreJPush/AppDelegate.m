//
//  AppDelegate.m
//  YXJJPush
//
//  Created by YXJ on 16/2/15.
//  Copyright (c) 2015年 YXJ. All rights reserved.
//

#import "AppDelegate.h"
#import "YXJJPush.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //注册JPush
    [YXJJPush registerJPush:launchOptions];
    
    [self addJPushLister];
    
    return YES;
}

@end
