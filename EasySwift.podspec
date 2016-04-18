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
  s.version          = "1.0.0"
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
  s.source_files = 'Pod/**/*'
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

  s.public_header_files = 'Pod/Classes/Easy/**/*.h','Pod/Classes/Extend/**/*.h','Pod/Classes/Private/**/*.h'
  s.frameworks = 'UIKit','JavaScriptCore'
end

