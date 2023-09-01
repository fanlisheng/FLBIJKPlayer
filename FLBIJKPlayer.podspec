#
# Be sure to run `pod lib lint FLBIJKPlayer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FLBIJKPlayer'
  s.version          = '0.1.0'
  s.summary          = 'ijkplayer iOS video player SDK,no openssl'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/fanlisheng/FLBIJKPlayer'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  #s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'fanlisheng' => '874112968@qq.com' }
    s.license      = "MIT (example)"
  # s.source           = { :git => 'https://github.com/fanlisheng/FLBIJKPlayer.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source = { :http => "https://github.com/fanlisheng/BijkplayerFork/blob/main/IJKMediaPlayer.tar.gz" }
  s.vendored_frameworks = 'IJKMediaPlayer.framework'
  
  s.frameworks  = "AudioToolbox", "AVFoundation", "CoreGraphics", "CoreMedia", "CoreVideo", "MobileCoreServices", "OpenGLES", "QuartzCore", "VideoToolbox", "Foundation", "UIKit", "MediaPlayer"
  s.libraries   = "bz2", "z", "stdc++"

#  s.requires_arc = true

  s.prepare_command = <<-CMD
    tar -xvf ./IJKMediaPlayer.tar.xz
  CMD
  
  # s.resource_bundles = {
  #   'FLBIJKPlayer' => ['FLBIJKPlayer/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
