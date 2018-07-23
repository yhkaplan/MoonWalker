#
# Be sure to run `pod lib lint MoonWalker.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MoonWalker'
  s.version          = '0.0.1'
  s.summary          = 'An easy to use Walkthrough framework'

  s.description      = <<-DESC
I made this Walkthrough framework to provide a simple API
to allow for rapidly implementing a walkthrough. It does
many things for you, but remains fairly minimal. Also,
I focus heavily on test coverage.
                       DESC

  s.homepage         = 'https://github.com/yhkaplan/MoonWalker'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yhkaplan' => 'josh@pepabo.com' }
  s.source           = { :git => 'https://github.com/yhkaplan/MoonWalker.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'

  s.source_files = 'Sources/**'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
end
