//
//  EZExtend+UIViewController.swift
//  medical
//
//  Created by zhuchao on 15/4/28.
//  Copyright (c) 2015年 zhuchao. All rights reserved.
//

import UIKit
// MARK: - UIViewController

extension UIViewController {

    public var top: CGFloat {
        get {
            if let nav = self.navigationController {
                if nav.navigationBarHidden {
                    return view.top
                } else {
                    return nav.navigationBar.bottom
                }
            } else {
                return view.top
            }
        }
    }

    public var bottom: CGFloat {
        get {
            if let tab = tabBarController {
                if tab.tabBar.hidden {
                    return view.bottom
                } else {
                    return tab.tabBar.top
                }
            } else {
                return view.bottom
            }
        }
    }

    public var navigationBarHeight: CGFloat {
        get {
            if let nav = self.navigationController {
                return nav.navigationBar.h
            }

            return 0
        }
    }

    public var navigationBarColor: UIColor? {
        get {
            return navigationController?.navigationBar.tintColor
        } set (value) {
            navigationController?.navigationBar.barTintColor = value
        }
    }

    public var navigationBar: UINavigationBar? {
        get {
            return navigationController?.navigationBar
        }
    }

    public var applicationFrame: CGRect {
        get {
            return CGRect (x: view.x, y: top, width: view.w, height: bottom - top)
        }
    }

    // 导航条左右按钮设置 NAV是一个枚举值：.LEFT,.RIGHT
    public func showBarButton(position: NAV, title: String, fontColor: UIColor) {
        self.showBarButton(position, button: UIButton(navTitle: title, color: fontColor))
    }

    public func showBarButton(position: NAV, imageName: String) -> Void {
        self.showBarButton(position, button: UIButton(navImage: UIImage(named: imageName)!))
    }

    public func showBarButton(position: NAV, button: UIButton?) {
        if position == .LEFT {
            button?.addTarget(self, action: Selector("leftButtonTouch"), forControlEvents: UIControlEvents.TouchUpInside)
            self.navigationItem.leftBarButtonItem = nil
            self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button!)
            self.navigationController?.interactivePopGestureRecognizer?.delegate = nil
        } else if position == .RIGHT {
            button?.addTarget(self, action: Selector("rightButtonTouch"), forControlEvents: UIControlEvents.TouchUpInside)
            self.navigationItem.rightBarButtonItem = nil
            self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button!)
        }
    }

    public func leftButtonTouch() {
        self.navigationController?.popViewControllerAnimated(true)
    }

    public func rightButtonTouch() {

    }

    public func setTitleView(titleView: UIView) {
        self.navigationItem.titleView = titleView
    }
}
