//
//  SecondViewController.swift
//  EasySwiftTest
//
//  Created by yuanxiaojun on 16/6/5.
//  Copyright © 2016年 袁晓钧. All rights reserved.
//

import UIKit
import EasySwift
import ZLPhotoBrowser

class SecondViewController: UITableViewController {

    lazy var actionSheet = ZLPhotoActionSheet()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.automaticallyAdjustsScrollViewInsets = false

//        kViewHeight = UIScreen.mainScreen().bounds.size.height - 64

//        kViewHeight [[UIScreen mainScreen] bounds].size.height - 64

        let img = UIImageView(frame: CGRectMake(0, 100, 300, 200))
        self.view.addSubview(img)

        self.view.whenTap {
            // 初始化相册选取
            // 设置照片最大选择数
            self.actionSheet.maxSelectCount = 1
            // 设置照片最大预览数
            self.actionSheet.maxPreviewCount = 20
            self.actionSheet.showWithSender(self, animate: true, lastSelectPhotoModels: nil, completion: { (imgs, selectImgs) in
                img.image = imgs.first
            })
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

