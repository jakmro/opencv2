Pod::Spec.new do |s|
    s.name = "ReactNativeExecutorchOpencv2"
    s.version = "0.1.0"
    s.summary = "OpenCV (Computer Vision) for iOS."
    s.homepage = "https://github.com/jakmro/opencv2.git"
    s.source = { 
      :git => "https://github.com/jakmro/opencv2.git", 
      :tag => "#{s.version}"
    }
    s.platform = :ios
    s.ios.deployment_target = "16.0"
    s.preserve_paths = "opencv2.xcframework"
    s.vendored_frameworks = "opencv2.xcframework"
    s.requires_arc = false
    s.ios.frameworks = [
        "AssetsLibrary", "AVFoundation", "CoreGraphics",
        "CoreMedia", "CoreVideo", "Foundation",
        "QuartzCore", "UIKit"
    ]
    s.libraries = "c++", "stdc++"
    s.pod_target_xcconfig = {
        "CLANG_CXX_LANGUAGE_STANDARD" => "c++17",
        "CLANG_CXX_LIBRARY" => "libc++",
    }
end