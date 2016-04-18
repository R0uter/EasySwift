//
//  UIViewController+Common.swift
//  NTSLTerminus
//
//  Created by YuHeng bing on 16/2/29.
//  Copyright © 2016年 YXJ. All rights reserved.
//

import UIKit

func NSLogD(msg: AnyObject) {
    #if DEBUG
        let logs = "***********DEBUG:\(msg)**************"
        print("--------------------------------------------")
        print(logs)
        print("--------------------------------------------")
    #endif
}

extension UIViewController {

    // 颜色值
    func RGBA(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) -> UIColor? {
        return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a)
    }
    // MARK: 界面跳转
    func pushWithSelfStoryBoard(VCName: String, parameter: AnyObject?) {
        pushWithOtherStoryBoard(VCName, storyBoardName: "", parameter: parameter)
    }

    func pushWithOtherStoryBoard(VCName: String, storyBoardName: String, parameter: AnyObject?) {
        var story: UIStoryboard?
        if (storyBoardName != "") {
            story = UIStoryboard.init(name: storyBoardName, bundle: nil)
        } else {
            story = self.storyboard
        }
        let controller = (story?.instantiateViewControllerWithIdentifier(VCName))!
//        controller.parameters = parameter
        self.navigationController?.pushViewController(controller, animated: true)
    }

    // MARK: 返回上个界面并跳转指定界面
    func popLastVCAfterPushVC(VCName: String, parameter: AnyObject?) {
        self .popVCAfterPushVC(VCName, popVC: nil, parameter: parameter)
    }
    // MARK: 返回上个界面并跳转到其他Stroyborad的界面
    func popLastVCAfterPushVCOtherStroyborad(VCName: String, storyBoardName: String, parameter: AnyObject?) {

        self.popVCAfterPushVCOtherStroyborad(VCName, popVC: nil, storyBoardName: storyBoardName, parameter: parameter)
    }
    // MARK: 返回指定界面并跳转到指定界面
    func popVCAfterPushVC(VCName: String, popVC: String?, parameter: AnyObject?) {
        let temNav = self.navigationController
        let vcs = self.navigationController?.viewControllers

        if (popVC == nil) {
            temNav?.popViewControllerAnimated(false)
            self.pushWithSelfStoryBoard(VCName, parameter: parameter)
        } else {
            for vc in vcs! {
                if (vc .isKindOfClass(NSClassFromString(popVC!)!)) {
                    temNav?.popToViewController(vc, animated: false)
                    self.pushWithSelfStoryBoard(VCName, parameter: parameter)
                    break
                }
            }
        }
    }
    // MARK: 返回指定界面并跳转到其他Stroyborad指定界面
    func popVCAfterPushVCOtherStroyborad(VCName: String, popVC: String?, storyBoardName: String, parameter: AnyObject?) {
        let temNav = self.navigationController
        if (popVC == nil) {
            temNav?.popViewControllerAnimated(false)
            self.pushWithOtherStoryBoard(VCName, storyBoardName: storyBoardName, parameter: parameter)
        } else {
            let vcs = self.navigationController?.viewControllers
            for vc in vcs! {
                if (vc .isKindOfClass(NSClassFromString(popVC!)!)) {
                    temNav?.popToViewController(vc, animated: false)
                    self.pushWithOtherStoryBoard(VCName, storyBoardName: storyBoardName, parameter: parameter)
                    break
                }
            }
        }
    }
    
}
