#
# Be sure to run `pod lib lint SWTest0.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SWTest0'
  s.version          = '0.1.0'
  s.summary          = '這是一個測試的Public library'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/wisisimon/SWTest0'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wisisimon' => 'kirara.chang@gmail.com' }
  s.source           = { :git => 'https://github.com/wisisimon/SWTest0.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'SWTest0/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SWTest0' => ['SWTest0/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'Alamofire'
  s.dependency 'SwiftyJSON'
  s.swift_version    = '4.0'
end
