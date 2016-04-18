//
//  AppDelegate+JPush.swift
//  YXJJPush
//
//  Created by YXJ on 16/2/15.
//  Copyright © 2016年 YXJ. All rights reserved.
//

import UIKit

class AppDelegate: UIResponder, UIApplicationDelegate {

}

extension AppDelegate{

    func application(application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: NSData) {
        
        // Required
        JPUSHService.registerDeviceToken(deviceToken)
    }
    
    func application(application: UIApplication, didReceiveRemoteNotification userInfo: [NSObject : AnyObject]) {
        
        // Required,For systems with less than or equal to iOS6
        JPUSHService.handleRemoteNotification(userInfo)
    }
    
    func application(application: UIApplication, didReceiveRemoteNotification userInfo: [NSObject : AnyObject], fetchCompletionHandler completionHandler: (UIBackgroundFetchResult) -> Void) {
        
        // IOS 7 Support Required
        JPUSHService.handleRemoteNotification(userInfo)
        completionHandler(UIBackgroundFetchResult.NewData)
        YXJJPush.sharedYXJJPush().didReceiveRemoteNotification(userInfo)
    }
    
}



