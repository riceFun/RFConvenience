#
# Be sure to run `pod lib lint RFConvenience.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RFConvenience'
  s.version          = '0.0.1'
  s.summary          = '总结暂时没有'

  s.description      = <<-DESC
  RFConvenience 个人项目commonfile 集合 方便开发
                       DESC

  s.homepage         = 'https://github.com/riceFun/RFConvenience'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'riceFun' => 'adolphbaofan@163.com' }
  s.source           = { :git => 'https://github.com/riceFun/RFConvenience.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'RFConvenience/Classes/**/*'
  
  # s.resource_bundles = {
  #   'RFConvenience' => ['RFConvenience/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.swift_version = '5.0'
end
