//
//  String+YXJ.swift
//  TSLSmartHome
//
//  Created by yuanxiaojun on 16/3/25.
//  Copyright © 2016年 特斯联. All rights reserved.
//

import UIKit

//#define IS_SCREEN_35_INCH ([UIScreen mainScreen].bounds.size.height == 480) ? YES : NO
//#define IS_SCREEN_4_INCH ([UIScreen mainScreen].bounds.size.height == 568) ? YES : NO
//#define IS_SCREEN_47_INCH ([UIScreen mainScreen].bounds.size.height == 667) ? YES : NO
//#define IS_SCREEN_55_INCH ([UIScreen mainScreen].bounds.size.height == 736) ? YES : NO

extension String {

    // MARK:获取字符串的长度
    public var length: Int {
        let temp = (self as NSString).length
        return temp
    }

    // MARK:字符串的截取
    /**
     swift3的方式截取

     - parameter start: 开始位置
     - parameter end:   结束位置

     - returns: 截取后的string字符串
     */
    public func substringWithRange(start: Int, end: Int) -> String {
        let rage: Range<String.Index> = self.startIndex.advancedBy(start) ..< self.endIndex.advancedBy(end)
//        let rage = start..<end
        let str = self.substringWithRange(rage)
        return str
    }

    /**
     oc的方式截取字符串

     - parameter start:  开始位置
     - parameter length: 截取的长度

     - returns: 截取后的string字符串
     */
    public func substringWithRange(start: Int, length: Int) -> String {
        let asNSString = self as NSString
        let temp = asNSString.substringWithRange(NSRange(location: start, length: length))
        return temp
    }

    // MARK: 去除HTML标签
    public func filterHTML(html: String) -> String {
        var temp = html
        let scanner: NSScanner = NSScanner.init(string: temp)
        var text: NSString?
        while scanner.atEnd == false {
            scanner.scanUpToString("<", intoString: nil)
            scanner.scanUpToString("<", intoString: &text)
            temp = temp.stringByReplacingOccurrencesOfString("\(text)>", withString: "")
        }
        return temp
    }

    // MARK:
    public func empty() -> Bool {

        return self.isEmpty
    }

    // MARK:
    public func notEmpty() -> Bool {
        return !self.isEmpty
    }

    // MARK:
    // public func isTelephone2() -> Bool {
    //
    // let pred_Unicom:NSPredicate = NSPredicate.init(format: "SELF MATCHES ^(1)[0-9]{10}", argumentArray: nil)
    // let isMatch_CMCC:Bool = pred_Unicom.evaluateWithObject(self)
    // return isMatch_CMCC
    // }

    // MARK:
    public func validateIdentityCard() -> Bool {
        var flag: Bool
        if self.isEmpty {
            flag = false
            return flag
        }

        let regex2 = "^(\\d{14}|\\d{17})(\\d|[xX])$"
        let identityCardPredicate: NSPredicate = NSPredicate.init(format: "SELF MATCHES \(regex2)", argumentArray: nil)

        return identityCardPredicate.evaluateWithObject(self)
    }
    // MARK: 拼音转换
    public func pinYin() -> String {
        let str: String = self

        CFStringTransform(str as! CFMutableStringRef, nil, kCFStringTransformStripDiacritics, false)
        CFStringTransform(str as! CFMutableStringRef, nil, kCFStringTransformStripDiacritics, false)
        return str
    }
    // MARK: 根据宽度计算高度
    public func sizeWithFontByWith(font: UIFont, byWith: CGFloat) -> CGSize {
        let str: NSString = self
        let attribute: [String: AnyObject] = [NSFontAttributeName: font]
        let rct: CGRect = str.boundingRectWithSize(CGSizeMake(byWith, 999999.0), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: attribute, context: nil)
        return rct.size
    }
    // MARK: 根据高度计算宽度
    public func sizeWithFontByHeight(font: UIFont, byHeight: CGFloat) -> CGSize {
        let str: NSString = self
        let attribute: [String: AnyObject] = [NSFontAttributeName: font]
        let rct: CGRect = str.boundingRectWithSize(CGSizeMake(999999.0, byHeight), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: attribute, context: nil)
        return rct.size
    }

    // MARK: 返回显示字串所需要的尺寸
    public func calculateSize(size: CGSize, font: UIFont) -> CGSize {
        var expectedLabelSize: CGSize = CGSizeZero
        let str: NSString = self
        let paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle.init()
        paragraphStyle.lineBreakMode = NSLineBreakMode.ByWordWrapping

        let attributes: [String: AnyObject] = [NSFontAttributeName: font, NSParagraphStyleAttributeName: paragraphStyle];
        expectedLabelSize = str.boundingRectWithSize(size, options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: attributes, context: nil).size

        return CGSizeMake(ceil(expectedLabelSize.width), ceil(expectedLabelSize.height))
    }

    // MARK:字符串转int
    /**
     字符串转int  string to  int

     - parameter str: string

     - returns: int
     */
    public func toInt() -> Int {
        return Int((self as NSString).intValue)
    }

    // MARK:字符串转double
    /**
     字符串转double

     - returns: double
     */
    public func doubleValue() -> Double {
        return (self as NSString).doubleValue
    }

    /**
     String 转 NSString

     - parameter str: string

     - returns: NSString
     */
    public func stringFormat(str: String) -> NSString {
        return NSString(CString: str.cStringUsingEncoding(NSUTF8StringEncoding)!,
            encoding: NSUTF8StringEncoding)!
    }
}
