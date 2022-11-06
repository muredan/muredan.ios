# Uncomment the next line to define a global platform for your project
platform :ios, '15.0'
use_frameworks!

workspace 'muredan.ios'

target 'muredan.ios' do

  # Alphabetical Order
  pod 'Alamofire', '5.5'

end


# Fix Xcode 14 bundle code signing issue
# https://stackoverflow.com/a/73765527/3353189
post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      if target.respond_to?(:product_type) and target.product_type == "com.apple.product-type.bundle"
        target.build_configurations.each do |config|
          config.build_settings['CODE_SIGNING_ALLOWED'] = 'NO'
        end
      end
    end
  end
end