//
//  EZExtend+Array.swift
//  medical
//
//  Created by zhuchao on 15/5/1.
//  Copyright (c) 2015年 zhuchao. All rights reserved.
//

import UIKit

extension Array {

    public func stringAtIndex(index: Int, other: String) -> String {
        if self.count >= index + 1 {
            return (self[index] as! String).trim
        } else {
            return other
        }
    }

    public func floatAtIndex(index: Int, other: CGFloat) -> CGFloat {
        if self.count >= index + 1 {
            return (self[index] as! String).trim.floatValue
        } else {
            return other
        }
    }

    public mutating func removeElement<U: Equatable>(object: U) {
        var index: Int?
        for (idx, objectToCompare) in enumerate() {
            if let to = objectToCompare as? U {
                if object == to {
                    index = idx
                }
            }
        }

        if (index != nil) {
            self.removeAtIndex(index!)
        }
    }
}