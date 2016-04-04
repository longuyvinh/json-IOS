# json-IOS
connnect Json with ios by Alamofire 

Step 1: install cocoapods
sudo gem install cocoapods

Step 2: tao file pod 
~ pod init

Step 3: cau hinh file pod and install
------>
platform :ios, '8.0'
use_frameworks!

pod 'Alamofire', '~> 3.0'
pod 'SwiftyJSON', :git => 'https://github.com/SwiftyJSON/SwiftyJSON.git'

target 'magicIOS' do
end
<----------

~ pod install


