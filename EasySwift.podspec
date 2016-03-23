
Pod::Spec.new do |s|
  s.name             = "EasySwift"
  s.version          = “0.0.1”
  s.summary          = "EasySwift"
  s.description      = <<-DESC
                      This is the most simple way to use swift, which is a complete throughout the entire iOS development of the most convenient, the most simple, the most perfect framework to build the heart.
                       DESC
  s.homepage         = "https://github.com/stubbornnessness"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'Apache License, Version 2.0'
  s.author           = { "袁晓钧" => "1130477036@qq.com"" }
  s.source           = { :git => "https://github.com/stubbornnessness/EasySwift.git", :tag => s.version.to_s }
  #s.source           = { :git => "/Users/yxj/Documents/EasySwift"}
  s.social_media_url = 'https://twitter.com/yxj'

  s.platform     = :ios, '8.0'
  s.requires_arc = true
  s.module_name = "EasySwift”
  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {'EasySwift' => ['Pod/Assets/*.png']}
    s.dependency 'HanekeSwift'
    s.dependency 'Bond'
    s.dependency 'Alamofire'
    s.dependency 'SnapKit'
    s.dependency 'Kingfisher'
    s.dependency 'ObjectMapper'
    s.dependency 'ReachabilitySwift'
    s.dependency 'TTTAttributedLabel'
s.public_header_files = 'Pod/Classes/Easy/**/*.h','Pod/Classes/Extend/**/*.h','Pod/Classes/Private/**/*.h'
s.frameworks = 'UIKit','JavaScriptCore'
end
