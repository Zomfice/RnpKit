
Pod::Spec.new do |s|
  s.name             = 'RnpKit'
  s.version          = '1.2.3'
  s.summary          = 'A short description of RnpKit.'


  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Zomfice/RnpKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zomfice@gmail.com' => 'zomfice@gmail.com' }
  s.source           = { :git => 'https://github.com/Zomfice/RnpKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'RnpKit/RnpKit.h'
  
  # s.resource_bundles = {
  #   'RnpKit' => ['RnpKit/Assets/*.png']
  # }
  
  s.subspec 'View' do |spec|
      spec.source_files = 'RnpKit/Classes/View/**/*'
  end
  
  s.subspec 'Layer' do |spec|
      spec.source_files = 'RnpKit/Classes/Layer/**/*'
      spec.dependency 'RnpKit/View'
  end
  
  s.subspec 'Gesture' do |spec|
      spec.source_files = 'RnpKit/Classes/Gesture/**/*'
      spec.dependency 'RnpKit/View'
  end
  
  s.subspec 'Layout' do |spec|
      spec.source_files = 'RnpKit/Classes/Layout/**/*'
      spec.dependency 'RnpKit/View'
      spec.dependency 'Masonry'
  end

  s.subspec 'BezierPath' do |spec|
    spec.source_files = 'RnpKit/Classes/Bezier/**/*'
    spec.dependency 'RnpKit/View'
  end
  s.subspec 'AttributedString' do |spec|
    spec.source_files = 'RnpKit/Classes/AttributedString/**/*'
    spec.dependency 'RnpKit/View'
  end
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'

  # s.dependency 'AFNetworking', '~> 2.3'
end
