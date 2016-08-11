//
//  DeviceKit.swift
//  Pods
//
//  Created by yuanxiaojun on 16/8/11.
//
//

import UIKit

public class DeviceKit: NSObject {

    /**
     打电话

     - parameter phone: 手机号
     */
    public func callPhone(phone: String) {
        let url = NSURL(string: "tel://" + phone)
        UIApplication.sharedApplication().openURL(url!)
    }
}
