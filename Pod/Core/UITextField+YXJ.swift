//
//  UITextField+YXJ.swift
//  Pods
//
//  Created by yuanxiaojun on 16/6/13.
//
//

import UIKit

extension UITextField {

    private func NSLogD(msg: AnyObject) {
        #if DEBUG
            if let msg = msg {
                let logs = "***********DEBUG:\(msg)**************"
                print("--------------------------------------------")
                print(logs)
                print("--------------------------------------------")
            } else {
                print("***********DEBUG:空(null)**************")
            }
        #endif
    }

}
