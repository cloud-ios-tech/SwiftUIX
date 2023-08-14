Pod::Spec.new do |spec|
  spec.name          = "SwiftUIX"
  spec.version       = "0.1.7"
  spec.summary       = "SwiftUIX library in iOS"
  spec.homepage      = "https://github.com/SwiftUIX/SwiftUIX"
  spec.license       = { :type => "MIT", :file => "LICENSE.md" }
  spec.author        = { "SwiftUIX" => "https://github.com/SwiftUIX/SwiftUIX" }
  spec.platforms     = { :ios => "13.0", :osx => "10.15" }
  spec.source        = { :git => "https://github.com/cloud-ios-tech/SwiftUIX", :tag => spec.version.to_s }
  spec.source_files  = "Sources/**/*.swift"
  spec.frameworks    = "SwiftUI", "UIKit"
  spec.requires_arc  = true
  spec.swift_version = '5.1'
end

