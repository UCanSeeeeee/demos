# Uncomment the next line to define a global platform for your project
platform :ios, '13.0'

target 'learn_diary' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for learn_diary

  pod 'SDWebImage'
  pod 'SDWebImage/WebP'
  pod 'YYCategories'
  pod 'LookinServer'
end


post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings["IPHONEOS_DEPLOYMENT_TARGET"] = "13.0"
    end
  end
end