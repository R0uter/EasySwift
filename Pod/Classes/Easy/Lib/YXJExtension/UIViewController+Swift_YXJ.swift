//
//  UIViewController+Swift_YXJ.swift
//  TSLSmartHome
//
//  Created by yuanxiaojun on 16/3/17.
//  Copyright © 2016年 特斯联. All rights reserved.
//

import UIKit

let ns = NSBundle.mainBundle().infoDictionary!["CFBundleExecutable"] as! String

extension UIViewController {

    class func ClassFromString(vcName: String) -> AnyClass {
        return NSClassFromString(ns + "." + vcName)!
//        return NSClassFromString(vcName)!
    }

    func pushWithSelfStoryBoard_Swift(VCName: String) {
        pushWithOtherStoryBoard_Swift(VCName, storyBoardName: "")
    }

    func pushWithOtherStoryBoard_Swift(VCName: String, storyBoardName: String) {
        let viewControllers = self.navigationController!.viewControllers
        var vc: UIViewController?

        for controllers in viewControllers {
            if controllers.isKindOfClass(UIViewController.ClassFromString(VCName)) {
                vc = controllers
            }
        }

        if (vc != nil) {
            self.navigationController?.popToViewController(vc!, animated: true)
        } else {
            var story: UIStoryboard?
            if (storyBoardName != "") {
                story = UIStoryboard(name: storyBoardName, bundle: nil)
            } else {
                story = self.storyboard
            }
            let controller: UIViewController = (story?.instantiateViewControllerWithIdentifier(VCName))!
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
    func getVCFormSelfStoryBoard_Swift(VCName: String) -> UIViewController {
        return getVCFormOtherStoryBoard_Swift(VCName, storyBoardName: "")
    }
    func getVCFormOtherStoryBoard_Swift(VCName: String, storyBoardName: String) -> UIViewController {
        let viewControllers: Array = self.navigationController!.viewControllers
        var tempVC: UIViewController?
        for controllers in viewControllers {
            if controllers.isKindOfClass(UIViewController.ClassFromString(VCName)) {
                tempVC = controllers
            }
        }
        if (tempVC != nil) {
            return tempVC!
        } else {
            var story: UIStoryboard?
            if (storyBoardName != "") {
                story = UIStoryboard(name: storyBoardName, bundle: nil)
            } else {
                story = self.storyboard
            }
            let controller: UIViewController = (story?.instantiateViewControllerWithIdentifier(VCName))!
            return controller
        }
    }
    func pushVC_Swift(vc: UIViewController) {
        let viewControllers: Array = self.navigationController!.viewControllers
        var tempVC: UIViewController?
        for controllers in viewControllers {
            if (controllers == vc) {
                tempVC = controllers
            }
        }
        if (tempVC != nil) {
            self.navigationController?.popToViewController(vc, animated: true)
        } else {
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}
