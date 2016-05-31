#
# Be sure to run `pod lib lint EasySwift.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "EasySwift"
  s.version          = "1.1.1"
  s.summary          = "a little descript for EasySwift"
  s.description      = <<-DESC
                      This is the most simple way to use swift, which is a complete throughout the entire iOS development of the most convenient, the most simple, the most perfect framework to build the heart.
                       DESC
  s.homepage         = "https://github.com/stubbornnessness"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'Apache License, Version 2.0'
  s.author           = { "stubbornness1219" => "18223847097@163.com" }
  s.source           = { :git => "https://github.com/stubbornnessness/EasySwift.git", :tag => s.version.to_s }
  # s.source           = { :git => "/Users/yxj/Documents/EasySwift"}
  # s.social_media_url = 'https://twitter.com/yxj'
  s.platform     = :ios
  s.ios.deployment_target = '8.0'
  s.requires_arc = true
  s.module_name = "EasySwift"

  s.default_subspec = 'Core' , 'Extension' , 'EUI', 'FlexboxKit', 'CoreData', 'PhotoBrowser', 'Pinyin', 'DOPDropDownMenu', 'Gumbo', 'ObjectiveGumbo', 'FLSideSlipViewController', 'SwiftRegex', 'URLManager', 'YXJLinksButton', 'YXJImageCompressor', 'JKCountDownButton', 'PullRefresh', 'YXJCycleView', 'YXJPageControl', 'YXJKxMenu', 'YXJTagLabelView', 'YXJOnePixelLine', 'YXJSlideBar', 'YXJSwipeTableViewCell', 'Watch' , 'YXJRatingView', 'TLCityPicker'

  s.subspec 'Core' do |core|
    core.public_header_files = 'Pod/Core/*.h'
    core.source_files = 'Pod/Core/*.h'

    core.dependency 'HanekeSwift'
    core.dependency 'Bond'
    core.dependency 'Alamofire'
    core.dependency 'SnapKit'
    core.dependency 'Kingfisher'
    core.dependency 'ObjectMapper'
    core.dependency 'ReachabilitySwift'
    core.dependency 'TTTAttributedLabel'

    core.dependency 'UITableView+FDTemplateLayoutCell'
    core.dependency 'CYLTabBarController'
    core.dependency 'IQKeyboardManager'
    core.dependency 'MWPhotoBrowser'
    core.dependency 'UIButton-SSEdgeInsets'
    core.dependency 'GCDSwift'
    core.dependency 'APAddressBook/Swift'
    core.dependency 'Loggerithm'
    core.dependency 'Colours'
    core.dependency 'RainbowNavigation'
    core.dependency 'SystemServices'
    core.dependency 'swiftScan' 
    core.dependency 'TYAlertController' 
    core.dependency 'NBLoadableFromXibView' 
    core.dependency 'LCCoolHUD'  
    core.dependency 'TOWebViewController'
    core.dependency 'FORScrollViewEmptyAssistant' 
    core.dependency 'SwiftyJSON'
    core.dependency 'MJRefresh'
    core.dependency 'DKChainableAnimationKit'
  
  end

  s.subspec 'Extension' do |extension|
    extension.public_header_files = 'Pod/Extension/*.h'
    extension.source_files = 'Pod/Extension/*.h'
  end

  s.subspec 'EUI' do |ss|
    ss.public_header_files = 'Pod/Lib/EUI/*.h'
    ss.source_files = 'Pod/Lib/EUI/*.h'
    ss.frameworks = 'JavaScriptCore'
  end

  s.subspec 'FlexboxKit' do |ss|
    ss.public_header_files = 'Pod/Lib/FlexboxKit/*.h'
    ss.source_files = 'Pod/Lib/FlexboxKit/*.h'
  end

  s.subspec 'CoreData' do |ss|
    ss.public_header_files = 'Pod/Lib/CoreData/*.h'
    ss.source_files = 'Pod/Lib/CoreData/*.h'
  end

  s.subspec 'PhotoBrowser' do |ss|
    ss.public_header_files = 'Pod/Lib/PhotoBrowser/*.h'
    ss.source_files = 'Pod/Lib/PhotoBrowser/*.h'
  end

  s.subspec 'Pinyin' do |ss|
    ss.public_header_files = 'Pod/Lib/Pinyin/*.h'
    ss.source_files = 'Pod/Lib/Pinyin/*.h'
  end

  s.subspec 'DOPDropDownMenu' do |ss|
    ss.public_header_files = 'Pod/Lib/DOPDropDownMenu/*.h'
    ss.source_files = 'Pod/Lib/DOPDropDownMenu/*.h'
  end

  s.subspec 'Gumbo' do |ss|
    ss.public_header_files = 'Pod/Lib/Gumbo/*.h'
    ss.source_files = 'Pod/Lib/Gumbo/*.h'
  end

  s.subspec 'ObjectiveGumbo' do |ss|
    ss.public_header_files = 'Pod/Lib/ObjectiveGumbo/*.h'
    ss.source_files = 'Pod/Lib/ObjectiveGumbo/*.h'
  end

  s.subspec 'FLSideSlipViewController' do |ss|
    ss.public_header_files = 'Pod/Lib/FLSideSlipViewController/*.h'
    ss.source_files = 'Pod/Lib/FLSideSlipViewController/*.h'
  end

  s.subspec 'SwiftRegex' do |ss|
    ss.public_header_files = 'Pod/Lib/SwiftRegex/*.h'
    ss.source_files = 'Pod/Lib/SwiftRegex/*.h'
  end

  s.subspec 'URLManager' do |ss|
    ss.public_header_files = 'Pod/Lib/URLManager/*.h'
    ss.source_files = 'Pod/Lib/URLManager/*.h'
  end

  s.subspec 'YXJLinksButton' do |ss|
    ss.public_header_files = 'Pod/Lib/YXJLinksButton/*.h'
    ss.source_files = 'Pod/Lib/YXJLinksButton/*.h'
  end

  s.subspec 'YXJImageCompressor' do |ss|
    ss.public_header_files = 'Pod/Lib/YXJImageCompressor/*.h'
    ss.source_files = 'Pod/Lib/YXJImageCompressor/*.h'
  end

  s.subspec 'JKCountDownButton' do |ss|
    ss.public_header_files = 'Pod/Lib/JKCountDownButton/*.h'
    ss.source_files = 'Pod/Lib/JKCountDownButton/*.h'
  end

  s.subspec 'PullRefresh' do |ss|
    ss.public_header_files = 'Pod/Lib/PullRefresh/*.h'
    ss.source_files = 'Pod/Lib/PullRefresh/*.h'
  end

  s.subspec 'YXJCycleView' do |ss|
    ss.public_header_files = 'Pod/Lib/YXJCycleView/*.h'
    ss.source_files = 'Pod/Lib/YXJCycleView/*.h'
  end

  s.subspec 'YXJPageControl' do |ss|
    ss.public_header_files = 'Pod/Lib/YXJPageControl/*.h'
    ss.source_files = 'Pod/Lib/YXJPageControl/*.h'
  end

  s.subspec 'YXJKxMenu' do |ss|
    ss.public_header_files = 'Pod/Lib/YXJKxMenu/*.h'
    ss.source_files = 'Pod/Lib/YXJKxMenu/*.h'
  end

  s.subspec 'YXJTagLabelView' do |ss|
    ss.public_header_files = 'Pod/Lib/YXJTagLabelView/*.h'
    ss.source_files = 'Pod/Lib/YXJTagLabelView/*.h'
  end

  s.subspec 'YXJSlideBar' do |ss|
    ss.public_header_files = 'Pod/Lib/YXJSlideBar/*.h'
    ss.source_files = 'Pod/Lib/YXJSlideBar/*.h'
  end

  s.subspec 'YXJOnePixelLine' do |ss|
    ss.public_header_files = 'Pod/Lib/YXJOnePixelLine/*.h'
    ss.source_files = 'Pod/Lib/YXJOnePixelLine/*.h'
  end

  s.subspec 'YXJSwipeTableViewCell' do |ss|
    ss.public_header_files = 'Pod/Lib/YXJSwipeTableViewCell/*.h'
    ss.source_files = 'Pod/Lib/YXJSwipeTableViewCell/*.h'
  end  

  s.subspec 'Watch' do |ss|
    ss.public_header_files = 'Pod/Lib/Watch/*.h'
    ss.source_files = 'Pod/Lib/Watch/*.h'
  end  

  s.subspec 'YXJRatingView' do |ss|
    ss.public_header_files = 'Pod/Lib/YXJRatingView/*.h'
    ss.source_files = 'Pod/Lib/YXJRatingView/*.h'
  end

  s.subspec 'TLCityPicker' do |ss|
    ss.public_header_files = 'Pod/Lib/TLCityPicker/*.h'
    ss.source_files = 'Pod/Lib/TLCityPicker/*.h'
  end

  s.frameworks = 'UIKit'
end

