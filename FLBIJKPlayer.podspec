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
  s.author           = { 'fanlisheng' => '874112968@qq.com' }
  s.license      = "MIT"
  s.source = { :http => "https://github.com/fanlisheng/FLBIJKPlayer/blob/main/IJKMediaPlayer.tar.gz" }
  
    #s.source_files = 'Classes/**/*'
    #s.public_header_files = 'Classes/**/*.h'
  
   #s.preserve_paths = 'IJKMediaPlayer/*.framework'
  s.vendored_frameworks = 'IJKMediaFramework.framework'
   #s.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '"$(PODS_ROOT)/IJKMediaPlayer/"' }

  s.platform     = :ios
  s.ios.deployment_target = '10.0'
  
  s.frameworks  = "AudioToolbox", "AVFoundation", "CoreGraphics", "CoreMedia", "CoreVideo", "MobileCoreServices", "OpenGLES", "QuartzCore", "VideoToolbox", "Foundation", "UIKit", "MediaPlayer"
  s.libraries   = "bz2", "z", "stdc++"

  s.requires_arc = true

  s.prepare_command = <<-CMD
    tar -xvf ./IJKMediaFramework.tar.xz
    
  CMD

  
  # s.resource_bundles = {
  #   'FLBIJKPlayer' => ['FLBIJKPlayer/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
