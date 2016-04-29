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
  s.version          = "1.0.4"
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
  s.source_files = 'Pod/Classes/Easy/Core/*',
            'Pod/Classes/Easy/Lib/*',
  					'Pod/Classes/Easy/Lib/PullRefresh/*',
  					'Pod/Classes/Easy/Lib/EmptyAssistant/*',
  					'Pod/Classes/Easy/Lib/YXJSlideBar/*',
  					'Pod/Classes/Easy/Lib/JKCountDownButton/*',
  					'Pod/Classes/Easy/Lib/YXJCycleView/*',
  					'Pod/Classes/Easy/Lib/YXJPageControl/*',
  					'Pod/Classes/Easy/Lib/YXJImageCompressor/*',
  					'Pod/Classes/Easy/Lib/YXJKxMenu/*',
  					'Pod/Classes/Easy/Lib/YXJSwipeTableViewCell/*',
  					'Pod/Classes/Easy/Lib/DOPDropDownMenu/*',
  					'Pod/Classes/Easy/Lib/CorePhotoPickerVCManager/*',
  					'Pod/Classes/Easy/Lib/CorePhotoPickerVCManager/Library/*',
  					'Pod/Classes/Easy/Lib/YXJTagLabelView/*',
  					'Pod/Classes/Easy/Lib/YXJOnePixelLine/*',
  					'Pod/Classes/Easy/Lib/YXJExtension/*',
  					'Pod/Classes/Easy/Lib/YXJExtension/YXJImageHelper/*',
  					'Pod/Classes/Easy/Lib/FLSideSlipViewController/*',

            'Pod/Classes/Extend/Pinyin/*',
            'Pod/Classes/Extend/SwiftRegex/*',
            'Pod/Classes/Extend/EUI/*',
            'Pod/Classes/Extend/FlexboxKit/*',
            'Pod/Classes/Extend/URLManager/*',

            'Pod/Classes/Private/Gumbo/*',
            'Pod/Classes/Private/ObjectiveGumbo/*'

  s.resource_bundles = {'EasySwift' => ['Pod/**/*.png']} 
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

  s.public_header_files = 'Pod/Classes/Easy/Core/*.h',
            'Pod/Classes/Easy/Lib/*.h',
            'Pod/Classes/Easy/Lib/PullRefresh/*.h',
            'Pod/Classes/Easy/Lib/EmptyAssistant/*.h',
            'Pod/Classes/Easy/Lib/YXJSlideBar/*.h',
            'Pod/Classes/Easy/Lib/JKCountDownButton/*.h',
            'Pod/Classes/Easy/Lib/YXJCycleView/*.h',
            'Pod/Classes/Easy/Lib/YXJPageControl/*.h',
            'Pod/Classes/Easy/Lib/YXJImageCompressor/*.h',
            'Pod/Classes/Easy/Lib/YXJKxMenu/*.h',
            'Pod/Classes/Easy/Lib/YXJSwipeTableViewCell/*.h',
            'Pod/Classes/Easy/Lib/DOPDropDownMenu/*.h',
            'Pod/Classes/Easy/Lib/CorePhotoPickerVCManager/*.h',
            'Pod/Classes/Easy/Lib/CorePhotoPickerVCManager/Library/*.h',
            'Pod/Classes/Easy/Lib/YXJTagLabelView/*.h',
            'Pod/Classes/Easy/Lib/YXJOnePixelLine/*.h',
            'Pod/Classes/Easy/Lib/YXJExtension/*.h',
            'Pod/Classes/Easy/Lib/YXJExtension/YXJImageHelper/*.h',
            'Pod/Classes/Easy/Lib/FLSideSlipViewController/*.h',

            'Pod/Classes/Extend/Pinyin/*.h',
            'Pod/Classes/Extend/SwiftRegex/*.h',
            'Pod/Classes/Extend/EUI/*.h',
            'Pod/Classes/Extend/FlexboxKit/*.h',
            'Pod/Classes/Extend/URLManager/*.h',

            'Pod/Classes/Private/Gumbo/*.h',
            'Pod/Classes/Private/ObjectiveGumbo/*.h'

  s.frameworks = 'UIKit','JavaScriptCore'
end

