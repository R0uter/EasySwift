//
//  NSObject+YXJ.swift
//  TSLSmartHome
//
//  Created by yuanxiaojun on 16/3/17.
//  Copyright © 2016年 特斯联. All rights reserved.
//

import UIKit

extension NSObject {

    // 1. 十进制 -> 二进制
    public func dec2bin(number: Int) -> String {
        var temp = number
        var str = ""
        while temp > 0 {
            str = "\(temp % 2)" + str
            temp /= 2
        }
        return str
    }

    // 2. 二进制 -> 十进制
    public func bin2dec(num: String) -> Int {
        var sum = 0
        for c in num.utf8 {
            sum = sum * 2 + Int("\(c)")!
        }
        return sum
    }

    // 3. 十进制 -> 十六进制
    public func dec2hex(num: Int) -> String {
        return String(format: "%0X", num)
    }

    // 4. 十六进制 -> 十进制
    public func hex2dec(num: String) -> Int {
        let str = num.uppercaseString
        var sum = 0
        for i in str.utf8 {
            sum = sum * 16 + Int(i) - 48 // 0-9 从48开始
            if i >= 65 { // A-Z 从65开始，但有初始值10，所以应该是减去55
                sum -= 7
            }
        }
        return sum
    }

    // MARK:本地化
    /**
     本地化

     - parameter key: 键值
     */
    public func localStr(key: String) -> String {
        return NSBundle.mainBundle().localizedStringForKey(key, value: nil, table: nil)
    }
}
