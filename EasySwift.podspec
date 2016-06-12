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
  s.version          = "1.2.2"
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

  s.default_subspec = 'Core' , 'FlexboxKit', 'CoreData', 'Pinyin', 'DOPDropDownMenu', 'Gumbo', 'ObjectiveGumbo', 'FLSideSlipViewController', 'SwiftRegex', 'URLManager', 'YXJLinksButton', 'YXJImageCompressor', 'JKCountDownButton', 'YXJCycleView', 'YXJPageControl', 'YXJKxMenu', 'YXJTagLabelView', 'YXJOnePixelLine', 'YXJSlideBar', 'YXJSwipeTableViewCell', 'Watch' , 'TLCityPicker' , 'SearchBar'

  s.subspec 'Core' do |core|
    core.source_files = 'Pod/Core/*'

    core.dependency 'HanekeSwift'
    core.dependency 'Bond'
    core.dependency 'Alamofire'
    core.dependency 'SnapKit'
    core.dependency 'Kingfisher'
    core.dependency 'ObjectMapper'
    core.dependency 'ReachabilitySwift'
    core.dependency 'TTTAttributedLabel'
    core.dependency 'EasySwift/FlexboxKit'
    core.dependency 'EasySwift/ObjectiveGumbo'
    core.dependency 'EasySwift/URLManager'
    core.dependency 'EasySwift/SwiftRegex'
    core.dependency 'EasySwift/Watch'
    core.dependency 'EasySwift/Pinyin'

    core.frameworks = 'UIKit' , 'CoreData' , 'JavaScriptCore'

  end

  s.subspec 'FlexboxKit' do |ss|
    ss.public_header_files = 'Pod/Lib/FlexboxKit/*.h'
    ss.source_files = 'Pod/Lib/FlexboxKit/*'
  end

  s.subspec 'CoreData' do |ss|
    ss.source_files = 'Pod/Lib/CoreData/*'
    ss.dependency 'EasySwift/Core'
  end

  s.subspec 'Pinyin' do |ss|
    ss.public_header_files = 'Pod/Lib/Pinyin/*.h'
    ss.source_files = 'Pod/Lib/Pinyin/*'
  end

  s.subspec 'DOPDropDownMenu' do |ss|
    ss.public_header_files = 'Pod/Lib/DOPDropDownMenu/*.h'
    ss.source_files = 'Pod/Lib/DOPDropDownMenu/*'
  end

  s.subspec 'Gumbo' do |ss|
    ss.public_header_files = 'Pod/Lib/Gumbo/*.h'
    ss.source_files = 'Pod/Lib/Gumbo/*'
  end

  s.subspec 'ObjectiveGumbo' do |ss|
    ss.public_header_files = 'Pod/Lib/ObjectiveGumbo/*.h'
    ss.source_files = 'Pod/Lib/ObjectiveGumbo/*'
    ss.dependency 'EasySwift/Gumbo'
  end

  s.subspec 'FLSideSlipViewController' do |ss|
    ss.public_header_files = 'Pod/Lib/FLSideSlipViewController/*.h'
    ss.source_files = 'Pod/Lib/FLSideSlipViewController/*'
  end

  s.subspec 'SwiftRegex' do |ss|
    ss.source_files = 'Pod/Lib/SwiftRegex/*'
  end

  s.subspec 'URLManager' do |ss|
    ss.public_header_files = 'Pod/Lib/URLManager/*.h'
    ss.source_files = 'Pod/Lib/URLManager/*'
  end

  s.subspec 'YXJLinksButton' do |ss|
    ss.source_files = 'Pod/Lib/YXJLinksButton/*'
    ss.dependency 'EasySwift/Core'
  end

  s.subspec 'YXJImageCompressor' do |ss|
    ss.public_header_files = 'Pod/Lib/YXJImageCompressor/*.h'
    ss.source_files = 'Pod/Lib/YXJImageCompressor/*'
    ss.dependency 'EasySwift/Core'
  end

  s.subspec 'JKCountDownButton' do |ss|
    ss.public_header_files = 'Pod/Lib/JKCountDownButton/*.h'
    ss.source_files = 'Pod/Lib/JKCountDownButton/*'
    ss.dependency 'EasySwift/Core'
  end

  s.subspec 'YXJCycleView' do |ss|
    ss.public_header_files = 'Pod/Lib/YXJCycleView/*.h'
    ss.source_files = 'Pod/Lib/YXJCycleView/*'
    ss.dependency 'EasySwift/YXJPageControl'
  end

  s.subspec 'YXJPageControl' do |ss|
    ss.public_header_files = 'Pod/Lib/YXJPageControl/*.h'
    ss.source_files = 'Pod/Lib/YXJPageControl/*'
  end

  s.subspec 'YXJKxMenu' do |ss|
    ss.public_header_files = 'Pod/Lib/YXJKxMenu/*.h'
    ss.source_files = 'Pod/Lib/YXJKxMenu/*'
  end

  s.subspec 'YXJTagLabelView' do |ss|
    ss.source_files = 'Pod/Lib/YXJTagLabelView/*'
  end

  s.subspec 'YXJSlideBar' do |ss|
    ss.public_header_files = 'Pod/Lib/YXJSlideBar/*.h'
    ss.source_files = 'Pod/Lib/YXJSlideBar/*'
  end

  s.subspec 'YXJOnePixelLine' do |ss|
    ss.public_header_files = 'Pod/Lib/YXJOnePixelLine/*.h'
    ss.source_files = 'Pod/Lib/YXJOnePixelLine/*'
  end

  s.subspec 'YXJSwipeTableViewCell' do |ss|
    ss.public_header_files = 'Pod/Lib/YXJSwipeTableViewCell/*.h'
    ss.source_files = 'Pod/Lib/YXJSwipeTableViewCell/*'
  end  

  s.subspec 'Watch' do |ss|
    ss.source_files = 'Pod/Lib/Watch/*'
  end  

  s.subspec 'TLCityPicker' do |ss|
    ss.public_header_files = 'Pod/Lib/TLCityPicker/*.h'
    ss.source_files = 'Pod/Lib/TLCityPicker/*'
  end

  s.subspec 'SearchBar' do |ss|
    ss.public_header_files = 'Pod/Lib/SearchBar/*.h'
    ss.source_files = 'Pod/Lib/SearchBar/*'
  end

  s.dependency 'UITableView+FDTemplateLayoutCell'
  s.dependency 'CYLTabBarController'
  s.dependency 'IQKeyboardManager'
  s.dependency 'MWPhotoBrowser'
  s.dependency 'UIButton-SSEdgeInsets'
  s.dependency 'GCDSwift'
  s.dependency 'APAddressBook/Swift'
  s.dependency 'Loggerithm'
  s.dependency 'Colours'
  s.dependency 'RainbowNavigation'
  s.dependency 'SystemServices'
  s.dependency 'swiftScan' 
  s.dependency 'TYAlertController' 
  s.dependency 'NBLoadableFromXibView' 
  s.dependency 'LCCoolHUD'  
  s.dependency 'TOWebViewController'
  s.dependency 'FORScrollViewEmptyAssistant' 
  s.dependency 'SwiftyJSON'
  s.dependency 'MJRefresh' , '3.1.0'
  s.dependency 'DKChainableAnimationKit'  
  s.dependency 'AXBadgeView-Swift'  
  s.dependency 'HCSStarRatingView'
  s.dependency 'ZLPhotoBrowser'

  s.frameworks = 'UIKit'

end

