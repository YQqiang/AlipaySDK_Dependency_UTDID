#
# Be sure to run `pod lib lint AlipaySDK_No_UTDID.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AlipaySDK_No_UTDID'
  s.version          = '0.0.1'
  s.summary          = '适用于集成了阿里推送(AlicloudPush)，出现 UTDID 冲突的情况.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
适用于集成了阿里推送(AlicloudPush)，出现 UTDID 冲突的情况.
                       DESC

  s.homepage         = 'https://github.com/YQqiang/AlipaySDK_No_UTDID'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yuqiang' => 'yuqiang.coder@gmail.com' }
  s.source           = { :git => 'https://github.com/YQqiang/AlipaySDK_No_UTDID.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  
  s.static_framework = true
  
  s.resources = 'AlipaySDK_No_UTDID/Assets/Resources/*.{xml,db,bundle,json,ttf,p12,der,xib}'
  
  s.libraries = 'c++', 'z'
  
  s.frameworks = 'QuartzCore', 'CoreText', 'CoreGraphics', 'CoreTelephony', 'SystemConfiguration', 'UIKit', 'Foundation', 'CFNetwork', 'CoreMotion', 'WebKit'

  s.vendored_frameworks = 'AlipaySDK_No_UTDID/Assets/Frameworks/*.framework'


  s.source_files = 'AlipaySDK_No_UTDID/Classes/**/*'
  
  # s.resource_bundles = {
  #   'AlipaySDK_No_UTDID' => ['AlipaySDK_No_UTDID/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.dependency 'AlicloudUTDID'
  
end
