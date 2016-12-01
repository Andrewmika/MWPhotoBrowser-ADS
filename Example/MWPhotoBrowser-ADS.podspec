#
#  Be sure to run `pod spec lint MWPhotoBrowser-ADS.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "MWPhotoBrowser-ADS"
  s.version      = "0.2.0"
  s.summary      = "this is a customed MWPhotoBrowser，used by my private project"

  s.description  = <<-DESC
  					自定义了错误图片，更改了title显示.之后还会有其他根据项目的改动。
                   DESC

  s.homepage     = "https://github.com/Andrewmika/MWPhotoBrowser-ADS"

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
 
  s.author             = { "Wanqi Shen" => "iandrew@126.com" }
  s.ios.deployment_target = '7.0'
  s.source       = { :git => "https://github.com/Andrewmika/MWPhotoBrowser-ADS.git", :tag => "#{s.version}" }

  s.source_files  = "Classes", "Pod/Classes/**/*.{h,m}"
  s.resource_bundles = {                     #资源目录
    'MWPhotoBrowser-ADS' => ['Pod/Assets/*.png']
  }
  s.requires_arc = true

  s.frameworks = 'ImageIO', 'QuartzCore', 'AssetsLibrary', 'MediaPlayer'
  s.weak_frameworks = 'Photos'

  s.dependency 'MBProgressHUD', '~> 0.9'
  s.dependency 'DACircularProgress', '~> 2.3'
  s.dependency 'SDWebImage', '~> 3.7', '!= 3.7.2'

end
