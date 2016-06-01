//
//  Array+YXJ.swift
//  TSLSmartHome
//
//  Created by yuanxiaojun on 16/3/31.
//  Copyright © 2016年 特斯联. All rights reserved.
//

import UIKit

extension Array {

    mutating func removeElement<U: Equatable>(object: U) {
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
