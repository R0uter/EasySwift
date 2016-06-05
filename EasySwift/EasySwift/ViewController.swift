//
//  ViewController.swift
//  EasySwift
//
//  Created by yuanxiaojun on 16/4/17.
//  Copyright © 2016年 袁晓钧. All rights reserved.
//

import UIKit
import EasySwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let rateView = YXJRatingView(frame: CGRectMake(0, 100, 200, 18))
        rateView.backGroundColor = UIColor.redColor()
        self.view.addSubview(rateView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
