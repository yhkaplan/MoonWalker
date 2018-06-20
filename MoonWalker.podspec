Pod::Spec.new do |s|
  s.name             = "MoonWalker"
  s.version          = "1.0.0"
  s.summary          = "A short description of MoonWalker."
  s.homepage         = "https://github.com/yhkaplan@gmail.com/MoonWalker"
  s.license          = { type: 'MIT', file: 'LICENSE' }
  s.author           = { "Josh Kaplan" => "yhkaplan@gmail.com" }
  s.source           = { git: "https://github.com/yhkaplan@gmail.com/MoonWalker.git", tag: s.version.to_s }
  s.social_media_url = 'https://twitter.com/yhkaplan@gmail.com'
  s.ios.deployment_target = '9.0'
  s.requires_arc = true
  s.ios.source_files = 'MoonWalker/Sources/**/*.{swift}'
  # s.resource_bundles = {
  #   'MoonWalker' => ['MoonWalker/Sources/**/*.xib']
  # }
  # s.ios.frameworks = 'UIKit', 'Foundation'
  # s.dependency 'Eureka', '~> 4.0'
end
