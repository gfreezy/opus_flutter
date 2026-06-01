#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint opus_flutter_macos.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'opus_flutter_macos'
  s.version          = '0.0.1'
  s.summary          = 'libopus wrappers for flutter in macOS.'
  s.description      = <<-DESC
  libopus wrappers for flutter in macOS.
                       DESC
  s.homepage         = 'https://epnw.eu'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'EPNW GmbH' => 'contact@epnw.eu' }
  s.source           = { :path => '.' }
  s.source_files = 'opus_flutter_macos/Sources/opus_flutter_macos/**/*'
  s.dependency 'FlutterMacOS'
  s.platform = :osx, '10.15'
  s.vendored_frameworks = 'opus_flutter_macos/opus.xcframework'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
end
