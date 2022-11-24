#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint mobcommonlib.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'mobcommonlib'
  s.version          = '1.1.1'
  s.summary          = 'Flutter plugin for mobcommon.'
  s.description      = <<-DESC
mobcommon is a common lib.
                       DESC
  s.homepage         = 'http://www.mob.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Mob' => 'mobproduct@mob.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
#   s.dependency 'AEINFoundation'
  s.dependency 'MOBFoundation'
  s.static_framework = true

  s.platform = :ios, '8.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
end
