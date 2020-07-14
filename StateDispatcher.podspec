Pod::Spec.new do |spec|
  spec.name = "StateDispatcher"
  spec.version = "1.0.0"
  spec.summary = "Simple UIViewController State Machine"

  spec.homepage = "https://github.com/AntonLisovoy/StateDispatcher"

  spec.license = { :type => "MIT", :file => "LICENSE.md" }

  spec.author = { "Anton Lisovoy" => "lisovoy@arcsinus.ru" }
  spec.social_media_url = "https://twitter.com/AntonLisovoy"

  spec.platform = :ios
  spec.ios.deployment_target = "11.0"

  spec.source = { :git => "https://github.com/AntonLisovoy/StateDispatcher.git", :tag => "#{spec.version}" }

  spec.source_files = "StateDispatcher/**/*.{swift}"

  spec.framework  = "UIKit"

  spec.swift_version = "5.0"
end
