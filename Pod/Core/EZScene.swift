//
//  Scene.swift
//  medical
//
//  Created by zhuchao on 15/4/22.
//  Copyright (c) 2015年 zhuchao. All rights reserved.
//

import UIKit
import SnapKit

public enum NAV: Int {
    case LEFT
    case RIGHT
}

public enum EXTEND: Int {
    case NONE
    case TOP
    case BOTTOM
    case TOP_BOTTOM
}

public enum INSET: Int {
    case NONE
    case TOP
    case BOTTOM
    case TOP_BOTTOM
}

public class EZScene: UIViewController {

    // parentScene 保留设计，必要的时候保存parentScene
    public weak var parentScene: EZScene?

    public func addSubView(view: UIView, extend: EXTEND) {
        self.view.addSubview(view)
        self.view.sendSubviewToBack(view)

        self.automaticallyAdjustsScrollViewInsets = false
        self.extendedLayoutIncludesOpaqueBars = true
        self.edgesForExtendedLayout = UIRectEdge.All
        view.snp_makeConstraints { (make) -> Void in
            // TODO
//            make.edges.equalTo(view.superview!).inset(
//                EdgeInsetsMake((extend == EXTEND.TOP||extend == EXTEND.TOP_BOTTOM) ? 64:0, left:0,bottom:(extend == EXTEND.BOTTOM||extend == EXTEND.TOP_BOTTOM) ? 49:0, right: 0)
//            )
        }
    }

    public func addScrollView(view: UIScrollView, extend: EXTEND, inset: INSET) {
        self.addSubView(view, extend: extend)
//        view.contentInset = UIEdgeInsetsMake((inset == INSET.TOP || inset == INSET.TOP_BOTTOM) ? 64:0, 0,
//            (inset == INSET.BOTTOM || inset == INSET.TOP_BOTTOM) ? 49:0, 0)
    }

}
