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
  s.version          = "1.0.5"
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

  s.default_subspec = 'Core' , 'Extension' , 'EUI', 'FlexboxKit', 'CoreData', 'PhotoBrowser', 'Pinyin', 'DOPDropDownMenu', 'Gumbo', 'ObjectiveGumbo', 'FLSideSlipViewController', 'SwiftRegex', 'URLManager', 'YXJLinksButton', 'YXJImageCompressor', 'JKCountDownButton', 'PullRefresh', 'YXJCycleView', 'YXJPageControl', 'YXJKxMenu', 'YXJTagLabelView', 'YXJOnePixelLine', 'YXJSlideBar', 'YXJSwipeTableViewCell', 'Watch' , 'YXJRatingView'

  s.subspec 'Core' do |core|
    #core.public_header_files = 'Pod/Core/*.swift' , 'Pod/Core/*.h'
    core.source_files = 'Pod/Core/*.swift' , 'Pod/Core/*.h'
  end

  s.subspec 'Extension' do |extension|
    extension.source_files = 'Pod/Extension/*.swift' , 'Pod/Extension/*.h'
  end

  s.subspec 'EUI' do |ss|
    ss.source_files = 'Pod/Lib/EUI/*'
    ss.frameworks = 'JavaScriptCore'
  end

  s.subspec 'FlexboxKit' do |ss|
    ss.source_files = 'Pod/Lib/FlexboxKit/*'
  end

  s.subspec 'CoreData' do |ss|
    ss.source_files = 'Pod/Lib/CoreData/*'
  end

  s.subspec 'PhotoBrowser' do |ss|
    ss.source_files = 'Pod/Lib/PhotoBrowser/*'
  end

  s.subspec 'Pinyin' do |ss|
    ss.source_files = 'Pod/Lib/Pinyin/*'
  end

  s.subspec 'DOPDropDownMenu' do |ss|
    ss.source_files = 'Pod/Lib/DOPDropDownMenu/*'
  end

  s.subspec 'Gumbo' do |ss|
    ss.source_files = 'Pod/Lib/Gumbo/*'
  end

  s.subspec 'ObjectiveGumbo' do |ss|
    ss.source_files = 'Pod/Lib/ObjectiveGumbo/*'
  end

  s.subspec 'FLSideSlipViewController' do |ss|
    ss.source_files = 'Pod/Lib/FLSideSlipViewController/*'
  end

  s.subspec 'SwiftRegex' do |ss|
    ss.source_files = 'Pod/Lib/SwiftRegex/*'
  end

  s.subspec 'URLManager' do |ss|
    ss.source_files = 'Pod/Lib/URLManager/*'
  end

  s.subspec 'YXJLinksButton' do |ss|
    ss.source_files = 'Pod/Lib/YXJLinksButton/*'
  end

   s.subspec 'YXJImageCompressor' do |ss|
    ss.source_files = 'Pod/Lib/YXJImageCompressor/*'
  end

  s.subspec 'JKCountDownButton' do |ss|
    ss.source_files = 'Pod/Lib/JKCountDownButton/*'
  end

  s.subspec 'PullRefresh' do |ss|
    ss.source_files = 'Pod/Lib/PullRefresh/*'
  end

  s.subspec 'YXJCycleView' do |ss|
    ss.source_files = 'Pod/Lib/YXJCycleView/*'
  end

  s.subspec 'YXJPageControl' do |ss|
    ss.source_files = 'Pod/Lib/YXJPageControl/*'
  end

  s.subspec 'YXJKxMenu' do |ss|
    ss.source_files = 'Pod/Lib/YXJKxMenu/*'
  end

  s.subspec 'YXJTagLabelView' do |ss|
    ss.source_files = 'Pod/Lib/YXJTagLabelView/*'
  end

  s.subspec 'YXJSlideBar' do |ss|
    ss.source_files = 'Pod/Lib/YXJSlideBar/*'
  end

   s.subspec 'YXJOnePixelLine' do |ss|
    ss.source_files = 'Pod/Lib/YXJOnePixelLine/*'
  end

  s.subspec 'YXJSwipeTableViewCell' do |ss|
    ss.source_files = 'Pod/Lib/YXJSwipeTableViewCell/*'
  end  

  s.subspec 'Watch' do |ss|
    ss.source_files = 'Pod/Lib/Watch/*'
  end

  s.subspec 'YXJRatingView' do |ss|
    ss.source_files = 'Pod/Lib/YXJRatingView/*'
  end

  s.dependency 'HanekeSwift'
  s.dependency 'Bond'
  s.dependency 'Alamofire'
  s.dependency 'SnapKit'
  s.dependency 'Kingfisher'
  s.dependency 'ObjectMapper'
  s.dependency 'ReachabilitySwift'
  s.dependency 'TTTAttributedLabel'

  s.dependency 'UITableView+FDTemplateLayoutCell'
  s.dependency 'CYLTabBarController'
  s.dependency 'IQKeyboardManager'
  s.dependency 'MWPhotoBrowser'
  s.dependency 'UIButton-SSEdgeInsets'
  s.dependency 'GCDSwift'
  s.dependency 'APAddressBook'
  s.dependency 'Loggerithm'
  s.dependency 'Colours'
  s.dependency 'RainbowNavigation'
  s.dependency 'SystemServices'
  s.dependency 'swiftScan' 
  s.dependency 'TYAlertController' 
  s.dependency 'NBLoadableFromXibView' 
  s.dependency 'LCCoolHUD'  
  s.dependency 'TOWebViewController'
  s.dependency 'TLCityPicker'
  s.dependency 'FORScrollViewEmptyAssistant'

  s.frameworks = 'UIKit'
end

