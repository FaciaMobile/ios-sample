# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'Facia_Sample_Project' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
pod 'IOSSecuritySuite'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['FRAMEWORK_SEARCH_PATHS'] ||= ['$(inherited)', '$(PROJECT_DIR)/Pods']
      config.build_settings['LIBRARY_SEARCH_PATHS'] ||= ['$(inherited)', '$(PROJECT_DIR)/Pods']
      config.build_settings['HEADER_SEARCH_PATHS'] ||= ['$(inherited)', '$(PROJECT_DIR)/Pods/**']
    end
  end
end