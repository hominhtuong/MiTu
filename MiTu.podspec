Pod::Spec.new do |spec|
	spec.name         = "MiTu"
	spec.version      = "1.0.0"
	spec.summary      = "Extension some class for coding"
	spec.swift_version = ['5.1', '5.2', '5.3', '5.4', '5.5', '5.6', '5.7']
  
	spec.description  = <<-DESC
	This CocoaPods library is software development kit for iOS
                   DESC

	spec.homepage     = "https://hominhtuong.com/"
	spec.license      = { :type => "MIT", :file => "LICENSE" }



	spec.author             = { "MiTu" => "admin@hominhtuong.com" }
	spec.platform     = :ios, "13.0"
	spec.ios.deployment_target = '13.0'

	spec.frameworks   = 'UIKit', 'Foundation'

	spec.source       = { :git => "https://github.com/hominhtuong/MiTu.git", :tag => "#{spec.version}" }
	spec.source_files  = 'MiTu/MiTuSources/**/*.swift', 'MiTu/SnapKitSources/*.swift', 'MTSDK/CryptoSources/**/*.swift'

end
