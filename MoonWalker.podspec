Pod::Spec.new do |s|
  s.name             = 'MoonWalker'
  s.version          = '1.0.0'
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
  s.source           = { :git => 'https://github.com/yhkaplan/MoonWalker.git', :tag => "#{s.version}" }

  s.ios.deployment_target = '11.0'

  s.source_files = 'Sources/**/*.{h,swift}'
  s.swift_version = '5.2'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
end
