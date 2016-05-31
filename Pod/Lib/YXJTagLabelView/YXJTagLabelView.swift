//
//  YXJTagLabelView.swift
//  LabelView
//
//  Created by 袁晓钧 16/1/25.
//  Copyright © 2016年 袁晓钧. All rights reserved.
//

import UIKit

/**
 *  代理
 */
@objc
protocol YXJTagLabelViewDelegate: NSObjectProtocol {
    optional func didClickLabel(text: String, index: Int)
}

class YXJTagLabelView: UIView {

    /// 横向间距
    var horizontalSpace: CGFloat = 10.0
    /// 纵向间距
    var verticalSpace: CGFloat = 10.0
    /// 左边空隙距离
    var margin: CGFloat = 0.0

    /// 标签文字------使用场景1:纯文字
    var textData: [String]?
    /// 标签图片------使用场景2:图片
    var imageData: [UIImage]?
    /// 标签图片size,如果不设置，将根据高宽度自动适应
    var imageSize: CGSize?
    /// 标签字体
    var textFont = UIFont.systemFontOfSize(15)
    /// 标签文字颜色
    var textColor = UIColor.whiteColor()
    /// 标签背景颜色
    var textBackgorund = UIColor.lightGrayColor()
    /// 选中颜色
    var selecteColor = UIColor.orangeColor()
    /// 是否可以选中,默认是
    var selecteEnable = true

    ///
    var title: String?
    ///
    var titleFont = UIFont.systemFontOfSize(15)
    ///
    var titleColor = UIColor.blackColor()

    /// 代理
    weak var delegate: YXJTagLabelViewDelegate?

    private var btnClick: UIButton!
    private var label: UILabel?

    private var horizontalWidth: CGFloat = 0
    private var vertical: CGFloat = 0
    private var index = -1

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    func setupUI() {
        remove()
        if title != nil {
            setLabel(title!, titleFont: titleFont, titleColor: titleColor)
        }
        if textData != nil || imageData != nil {
            tagLabelView(textFont, viewWidth: frame.width)
        }
    }

    deinit {
        print("释放了")
    }
}

// MARK: - 点击方法
extension YXJTagLabelView {

    func btnClick(sender: UIButton) {
        if btnClick == nil {
            btnClick = sender
        }
        if !btnClick.isEqual(sender) {
            btnClick.backgroundColor = textBackgorund
            btnClick.selected = false
        }
        sender.backgroundColor = selecteColor
        sender.selected = true
        btnClick = sender

        if delegate != nil {
            delegate?.didClickLabel!(sender.currentTitle!, index: sender.tag - 100)
        }
    }
}

// MARK: - 私有方法
extension YXJTagLabelView {
    private func setLabel(title: String, titleFont: UIFont, titleColor: UIColor) {
        label = UILabel()
        label!.text = title
        label!.textColor = titleColor
        label!.textAlignment = NSTextAlignment.Left
        let size = NSString(string: title).sizeWithAttributes([NSFontAttributeName: titleFont])
        label!.frame = CGRectMake(10, 10, size.width + 20, size.height)
        addSubview(label!)
    }

    private func tagLabelView(textFont: UIFont, viewWidth: CGFloat) {
        self.tagView(textFont, viewWidth: viewWidth)
    }

    private func tagView(textFont: UIFont, viewWidth: CGFloat) {
        if textData != nil {
            for str in textData! {
                index += 1;
                let button = UIButton()
                let size = NSString(string: str).sizeWithAttributes([NSFontAttributeName: textFont]);
                self.setBtn(button,
                    size: size,
                    viewWidth: viewWidth,
                    str: str)

                button.backgroundColor = textBackgorund
                button.layer.masksToBounds = true
                button.layer.cornerRadius = button.frame.height / 2
                button.clipsToBounds = true

                if index == textData!.count - 1 {
                    self.frame.size.height = CGRectGetMaxY(button.frame) + 10
                }
            }
        } else if imageData != nil {
            for img in imageData! {
                index += 1;
                let button = UIButton()

                var size: CGSize!
                if imageSize != nil {
                    size = imageSize
                } else {
                    size = img.size
                }

                self.setBtn(button,
                    size: size,
                    viewWidth: viewWidth,
                    str: "")

                button.setImage(img, forState: UIControlState.Normal)

                if index == imageData!.count - 1 {
                    self.frame.size.height = CGRectGetMaxY(button.frame) + 10
                }
            }
        }
    }

    private func setBtn(button: UIButton, size: CGSize, viewWidth: CGFloat, str: String) {

        button.frame.size.width = size.width + 10
        button.frame.size.height = size.height + 5
        if index == 0 {
            button.frame.origin.x = margin
        } else {
            button.frame.origin.x = horizontalWidth + horizontalSpace
        }

        if button.frame.origin.x + button.frame.size.width > viewWidth {
            horizontalWidth = 0
            vertical++
            button.frame.origin.x = margin
        }

        button.frame.origin.y = verticalSpace + vertical * (CGRectGetMaxY(button.frame) + horizontalSpace)

        if label != nil {
            button.frame.origin.y = CGRectGetMaxY(label!.frame) + button.frame.origin.y
        }
        horizontalWidth = CGRectGetMaxX(button.frame)

        button.setTitle(str, forState: .Normal)
        button.titleLabel?.font = textFont
        button.addTarget(self, action: #selector(YXJTagLabelView.btnClick(_:)), forControlEvents: .TouchUpInside)

        button.setTitleColor(textColor, forState: .Normal)
        button.contentVerticalAlignment = UIControlContentVerticalAlignment.Center
        button.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Center
        button.userInteractionEnabled = true
        button.titleLabel?.textAlignment = NSTextAlignment.Center
        button.enabled = selecteEnable
        button.tag = 100 + index
        addSubview(button)
    }

    private func remove() {
        for subV in subviews {
            subV.removeFromSuperview()
        }
    }

    override func removeFromSuperview() {
        remove()
        super.removeFromSuperview()
    }
}
