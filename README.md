# EasySwift
This is the most simple way to use swift, which is a complete throughout the entire iOS development of the most convenient, the most simple, the most perfect framework to build the heart.

## Join Us 
为了更好的完善此框架，希望更多对此框架有兴趣的朋友一起加入进来打造最好用最全面扩展最好的swift框架。
EasySwift官方QQ群：<mark>**542916901**</mark>

##Mark
先更新Github上的项目，所以最新的项目一定在[Github](https://github.com/stubbornnessness)上。

## Features
* MVVM : Model-View-ViewModel inspired by Functional Reactive Programming
* HTML To Native : Transform HTML&CSS to Native Control.
* FlexBox Support:It can uses Facebook's flexbox implementation ，and work well with AutoLayout。
* JavaScript and Native Bridge: We can declare the js function in native and call the js function in html
* DataBinding : We can use the SwiftBond to Bind the data via swift,and use the EZViewModel to Bind the data via html.example {{title}}
* Reflect Cocoa Touch : Reflect all the Cocoa Touch Api ,we can use the Cocoa Touch Api via HTML
* AutoLayout : The HTML layout based on the AutoLayout
* Live Load : Edit the HTML and the view in smulator will update automaticly without rebuild your app
* Cryptographic HTML : To make the HTML be safety,we provide the AES Encryption to encrypt the HTML
* URLManager : Push or Present the Controller by the custom URL
* Elegant PullToRefresh : Add PullToRefresh or InfiniteScrolling by HTML

## System Requirements
iOS 8.0 or above

## Installation
### As a CocoaPods Dependency
Add the following to your Podfile:

	pod 'EasySwift'
	
## Version
**V1.2.6** ---- 2016-8-11

* 增加EasyEmoji
* 增加EasyDropDownMenu
* 增加EasySearchBar
* 增加EasyCountDownButton
* 增加YXJXibView
* 增加YXJTagView
* 增加YXJKxMenu
* 增加YXJLinksButton
* 增加YXJCycleView
* 增加YXJPageController
* 增加YXJOnePixeLine
* 增加YXJSwipeTableViewCell
* 增加YXJSlideBar
* 增加YXJImageCompressor
* 增加YXJPullScale


**V1.2.5** ---- 2016-7-3

* 删除SearchBar,增加依赖EasySearchBar
* 删除YXJTagLabelView,增加依赖YXJTagView


**V1.2.4** ---- 2016-6-19

* 删除DropDownMenu
* 增加依赖EasyDropDownMenu
* 增加依赖库SwiftString
* 增加依赖库EasyEmoji

**V1.2.3** ---- 2016-6-12

* 由于3.1.1的MJRefresh在Swift中使用存在严重bug，故指定MJRefresh版本为3.1.0

**V1.2.1** ---- 2016-6-7

* 新增ZLPhotoBrowser


**V1.2.0** ---- 2016-6-6

* 新增HCSStarRatingView

**V1.1.9** ---- 2016-6-5

* 修正EZSystemInfo.swift访问不到属性的问题
* 新增EZSystemInfo.swift获取系统信息的方法
* 新增AXBadgeView-Swift
* 新增UISearchBar+YXJ

**V1.0.6** ---- 2016-5-31

* 增加依赖库SwiftyJSON
* 增加依赖库MJRefresh
* 增加依赖库DKChainableAnimationKit
  
**V1.0.5** ---- 2016-5-30

* 替换照片库框架为ZLPhotoBrowser
* 更新一些公共方法
* 优化工程目录结构


**V1.0.4** ---- 2016-4-29 

更新pod 项目结构

**V1.0.3** ---- 2016-4-29 

* 增加一些扩展方法
* 增加YXJLinksBtn，增加按钮下面的横线，类似HTML中的\<a>标签 [Button]()
* 增加TOWebViewController
* 增加侧滑框架FLSideSlipViewController
* 增加微信，QQ右上角的菜单效果框架支持YXJKxMenu
* 优化工程结构，不至于看起来太乱
	
## Example
依赖框架请到依赖框架的Github主页查看用法,本框架的核心类的用法近期贴出来

## License
EasySwift is licensed under the Apache License, Version 2.0 License. For more information, please see the LICENSE file.
