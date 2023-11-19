#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_carplay.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_carplaybr'
  s.version          = '1.2.2'
  s.summary          = 'Flutter Apps are now on Apple CarPlay.'
  s.description      = <<-DESC
Flutter Apps are now on Apple CarPlay. This package aims to make it safe to use iPhone apps made with Flutter in the car by integrating with CarPlay.
                       DESC
  s.homepage         = 'https://github.com/Fix-Pay/flutter_carplaybr'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Fix Pay' => 'armando.couto@fixpay.com.br' }
  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '14.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
