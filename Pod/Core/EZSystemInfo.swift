//
//  EZSystemInfo.swift
//  YXJ
//
//  Created by YXJ on 16/6/2.
//  Copyright (c) 2016年 YXJ. All rights reserved.
//

import UIKit

#if os(iOS)
    public let IOS10_OR_LATER = (UIDevice.currentDevice().systemVersion.caseInsensitiveCompare("10.0") != NSComparisonResult.OrderedAscending)
    public let IOS9_OR_LATER = (UIDevice.currentDevice().systemVersion.caseInsensitiveCompare("9.0") != NSComparisonResult.OrderedAscending)
    public let IOS8_OR_LATER = (UIDevice.currentDevice().systemVersion.caseInsensitiveCompare("8.0") != NSComparisonResult.OrderedAscending)
    public let IOS7_OR_LATER = (UIDevice.currentDevice().systemVersion.caseInsensitiveCompare("7.0") != NSComparisonResult.OrderedAscending)
    public let IOS6_OR_LATER = (UIDevice.currentDevice().systemVersion.caseInsensitiveCompare("6.0") != NSComparisonResult.OrderedAscending)
    public let IOS5_OR_LATER = (UIDevice.currentDevice().systemVersion.caseInsensitiveCompare("5.0") != NSComparisonResult.OrderedAscending)
    public let IOS4_OR_LATER = (UIDevice.currentDevice().systemVersion.caseInsensitiveCompare("4.0") != NSComparisonResult.OrderedAscending)
    public let IOS3_OR_LATER = (UIDevice.currentDevice().systemVersion.caseInsensitiveCompare("3.0") != NSComparisonResult.OrderedAscending)

    public let IOS9_OR_EARLIER = !IOS10_OR_LATER
    public let IOS8_OR_EARLIER = !IOS9_OR_LATER
    public let IOS7_OR_EARLIER = !IOS8_OR_LATER
    public let IOS6_OR_EARLIER = !IOS7_OR_LATER
    public let IOS5_OR_EARLIER = !IOS6_OR_LATER
    public let IOS4_OR_EARLIER = !IOS5_OR_LATER
    public let IOS3_OR_EARLIER = !IOS4_OR_LATER

    public let IS_SCREEN_35_INCH = CGSizeEqualToSize(CGSizeMake(640, 960), UIScreen.mainScreen().currentMode!.size)
    public let IS_SCREEN_4_INCH = CGSizeEqualToSize(CGSizeMake(640, 1136), UIScreen.mainScreen().currentMode!.size)
    public let IS_SCREEN_47_INCH = CGSizeEqualToSize(CGSizeMake(750, 1334), UIScreen.mainScreen().currentMode!.size)
    public let IS_SCREEN_47_INCH_BIG = (ScreenWidth == 568)
    public let IS_SCREEN_55_INCH = CGSizeEqualToSize(CGSizeMake(1242, 2208), UIScreen.mainScreen().currentMode!.size)
    public let IS_SCREEN_55_INCH_BIG = (ScreenWidth == 667)
#else
    public let IOS9_OR_LATER = false
    public let IOS8_OR_LATER = false
    public let IOS7_OR_LATER = false
    public let IOS6_OR_LATER = false
    public let IOS5_OR_LATER = false
    public let IOS4_OR_LATER = false
    public let IOS3_OR_LATER = false

    public let IOS9_OR_EARLIER = false
    public let IOS8_OR_EARLIER = false
    public let IOS7_OR_EARLIER = false
    public let IOS6_OR_EARLIER = false
    public let IOS5_OR_EARLIER = false
    public let IOS4_OR_EARLIER = false
    public let IOS3_OR_EARLIER = false

    public let IS_SCREEN_4_INCH = false
    public let IS_SCREEN_35_INCH = false
    public let IS_SCREEN_47_INCH = false
    public let IS_SCREEN_47_INCH_BIG = false
    public let IS_SCREEN_55_INCH = false
    public let IS_SCREEN_55_INCH_BIG = false
#endif

/// 是否是模拟器
public var IsSimulator: Bool {
    #if (arch(i386) || arch(x86_64)) && os(iOS)
        return true;
    #else
        return false;
    #endif
}

/// 获取设备名称
public let name = UIDevice.currentDevice().name

/// 获取设备系统名称
public let systemName = UIDevice.currentDevice().systemName

/// 获取系统版本
public let systemVersion = UIDevice.currentDevice().systemVersion

/// 获取设备模型
public let model = UIDevice.currentDevice().model

/// 获取设备本地模型
public let localizedModel = UIDevice.currentDevice().localizedModel

/// Swift获取Bundle的相关信息
public let infoDict = NSBundle.mainBundle().infoDictionary

/// app名称
public let appName = infoDict!["CFBundleName"] as! String!

/// app版本
public let appVersion = infoDict!["CFBundleShortVersionString"] as! String!

/// app build版本
public let appBuild = infoDict!["CFBundleVersion"] as! String!

/**
 设备类型
 - returns: 设备类型
 */
public func deviceType () -> String? {
    let name = UnsafeMutablePointer<utsname>.alloc(1)
    uname(name)
    let machine = withUnsafePointer(&name.memory.machine, { (ptr) -> String? in

        let int8Ptr = unsafeBitCast(ptr, UnsafePointer<CChar>.self)
        return String.fromCString(int8Ptr)
    })
    name.dealloc(1)
    if let deviceString = machine {
        switch deviceString {
            // iPhone
        case "iPhone1,1": return "iPhone 1G"
        case "iPhone1,2": return "iPhone 3G"
        case "iPhone2,1": return "iPhone 3GS"
        case "iPhone3,1", "iPhone3,2": return "iPhone 4"
        case "iPhone4,1": return "iPhone 4S"
        case "iPhone5,1", "iPhone5,2": return "iPhone 5"
        case "iPhone5,3", "iPhone5,4": return "iPhone 5C"
        case "iPhone6,1", "iPhone6,2": return "iPhone 5S"
        case "iPhone7,1": return "iPhone 6 Plus"
        case "iPhone7,2": return "iPhone 6"
        case "iPhone8,1": return "iPhone 6s"
        case "iPhone8,2": return "iPhone 6s Plus"
        default:
            return deviceString
        }
    } else {
        return nil
    }
}

public var Orientation: UIInterfaceOrientation {
    get {
        return UIApplication.sharedApplication().statusBarOrientation
    }
}

/// 屏幕宽度
public var ScreenWidth: CGFloat {
    get {
        if UIInterfaceOrientationIsPortrait(Orientation) {
            return UIScreen.mainScreen().bounds.size.width
        } else {
            return UIScreen.mainScreen().bounds.size.height
        }
    }
}

/// 屏幕高度
public var ScreenHeight: CGFloat {
    get {
        if UIInterfaceOrientationIsPortrait(Orientation) {
            return UIScreen.mainScreen().bounds.size.height
        } else {
            return UIScreen.mainScreen().bounds.size.width
        }
    }
}

/// 状态栏高度
public var StatusBarHeight: CGFloat {
    get {
        return UIApplication.sharedApplication().statusBarFrame.height
    }
}

