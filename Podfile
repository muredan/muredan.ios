# Uncomment the next line to define a global platform for your project
platform :ios, '15.0'
use_frameworks!

workspace 'muredan.ios'

target 'muredan.ios' do

  # Alphabetical Order
  pod 'Alamofire', '5.5'
  pod 'Charts', '4.1.0'
  pod 'GoogleSignIn', '6.1.0'
  pod 'FacebookLogin', '0.9.0'
  pod 'FirebaseAnalytics', '8.12.0'
  pod 'FirebaseDynamicLinks', '8.15.0'
  pod 'FirebaseMessaging', '8.15.0'
  pod 'FlagKit', '2.2.0'
  pod 'Kingfisher', '7.1.0'
  pod 'lottie-ios', '3.3.0'
  pod 'NVActivityIndicatorView', '4.8.0'
  pod 'PhoneNumberKit', '3.3.4'
  pod 'RxCocoa', '6.5.0'
  pod 'RxGesture', '4.0.2'
  pod 'SwiftKeychainWrapper', '4.0.1'
  pod 'SwiftLint', '0.44.0'
  pod 'VeriffSDK', '4.33.0'
  pod 'ZendeskSDKMessaging', '2.0.0'

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
