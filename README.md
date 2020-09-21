## CARTHAGE DEMO

### Open Project with Carthage
cd ChartageDemo
open ChartageDemo.xcodeproj

### How to add Carthage in Project
- brew install Carthage //dont forget
- carthage --version //check Carthage version
- create file Cartfile inside project
- open Cartfile

### How to add Framework Project with Carthage
- touch Cartfile
- write Library in Cartfile
- carthage update //if you waht to install all device iOS, MAC TV , WATCH
- carthage update --platform iOS //if you want to install all Library
- carthage update nameLibrary --platform iOS //if you want to install specific name Library
- Install All library  and Clean Chache : carthage update --platform ios --verbose
//run this if you have problem after install library like not complete installing
not use if Dependency *** has no shared framework schemes for any of the platforms: iOS
- carthage update --platform ios --verbose --new-resolver
//if you want to restart  Library installing and delete of cache library
- rm -rf ~/Library/Caches/org.carthage.CarthageKit
//if you want to clean cache history installing library with carthage

### Type of add Library in Cartfile
- github "facebook/Facebook-SDK-Swift"
- binary "https://raw.githubusercontent.com/AppsFlyerSDK/AppsFlyerFramework/master/Carthage/appsflyer-ios.json"

### Hungryhub Library Support in Carthage
github "michaelhenry/ImageViewer.swift" ~> 3.2
github "hackiftekhar/IQKeyboardManager" ~> 6.5.4
github "mxcl/PromiseKit" ~> 6.12.0
github "omise/omise-ios" ~> 3.0
github "tristanhimmelman/ObjectMapper" ~> 3.5
github "https://github.com/onevcat/Kingfisher" ~> 5.0
github "IBAnimatable/IBAnimatable" ~> 6.0.0
github "evgenyneu/Cosmos" ~> 20.0.1
github "Krimpedance/KRPullLoader" ~> 1.3.0
github "ninjaprox/NVActivityIndicatorView" ~> 4.8.0
github "scinfu/SwiftSoup" ~> 2.2.2
github "ElaWorkshop/TagListView" ~> 1.4.0
github "WenchaoD/FSCalendar" ~> 2.8.1
github "TomThorpe/TTRangeSlider" ~> 1.0.6
github "mkko/DrawerView" ~> 1.3.1
github "kirualex/SwiftyGif"
github "SwiftyJSON/SwiftyJSON" ~> 4.0
github "jrendel/SwiftKeychainWrapper"
github "BoltsFramework/Bolts-ObjC"  ~> 1.9.0
github "icalialabs/Presentr"
github "SURYAKANTSHARMA/CountryPicker"
github "teodorpatras/EasyTipView" ~> 2.0.4
github "CleverTap/clevertap-ios-sdk"
github "facebook/Facebook-SDK-Swift"

/** Core layer framework */
binary "https://zendesk.jfrog.io/zendesk/libs-releases-local/ios/zendesk/ZendeskCoreSDK/ZendeskCoreSDK.json" == 2.3.0

/** Support SDK */
binary "https://zendesk.jfrog.io/zendesk/libs-releases-local/ios/zendesk/SupportSDK/SupportSDK.json" == 5.0.5
binary "https://zendesk.jfrog.io/zendesk/libs-releases-local/ios/zendesk/SupportProvidersSDK/SupportProvidersSDK.json" == 5.0.5

/** Shared Zendesk UI frameworks */
binary "https://zendesk.jfrog.io/zendesk/libs-releases-local/ios/zendesk/CommonUISDK/CommonUISDK.json" == 5.0.0
binary "https://zendesk.jfrog.io/zendesk/libs-releases-local/ios/zendesk/MessagingSDK/MessagingSDK.json" == 3.6.0
binary "https://zendesk.jfrog.io/zendesk/libs-releases-local/ios/zendesk/MessagingAPI/MessagingAPI.json" == 3.6.0
binary "https://zendesk.jfrog.io/zendesk/libs-releases-local/ios/zendesk/SDKConfigurations/SDKConfigurations.json" == 1.1.5

/** AppFlayer framework */
binary "https://raw.githubusercontent.com/AppsFlyerSDK/AppsFlyerFramework/master/Carthage/appsflyer-ios.json"

/** Google Maps */
binary "https://dl.google.com/geosdk/GoogleMaps.json" ~> 3.10.0
binary "https://dl.google.com/geosdk/GooglePlaces.json" ~> 3.10.0

/** Firebase */
binary "https://dl.google.com/dl/firebase/ios/carthage/FirebaseABTestingBinary.json"
binary "https://dl.google.com/dl/firebase/ios/carthage/FirebaseAdMobBinary.json"
binary "https://dl.google.com/dl/firebase/ios/carthage/FirebaseAnalyticsBinary.json"
binary "https://dl.google.com/dl/firebase/ios/carthage/FirebaseAppDistributionBinary.json"
binary "https://dl.google.com/dl/firebase/ios/carthage/FirebaseAuthBinary.json"
binary "https://dl.google.com/dl/firebase/ios/carthage/FirebaseCrashlyticsBinary.json"
binary "https://dl.google.com/dl/firebase/ios/carthage/FirebaseDatabaseBinary.json"
binary "https://dl.google.com/dl/firebase/ios/carthage/FirebaseDynamicLinksBinary.json"
binary "https://dl.google.com/dl/firebase/ios/carthage/FirebaseFirestoreBinary.json"
binary "https://dl.google.com/dl/firebase/ios/carthage/FirebaseFunctionsBinary.json"
binary "https://dl.google.com/dl/firebase/ios/carthage/FirebaseGoogleSignInBinary.json"
binary "https://dl.google.com/dl/firebase/ios/carthage/FirebaseInAppMessagingBinary.json"
binary "https://dl.google.com/dl/firebase/ios/carthage/FirebaseMessagingBinary.json"
binary "https://dl.google.com/dl/firebase/ios/carthage/FirebaseMLModelInterpreterBinary.json"
binary "https://dl.google.com/dl/firebase/ios/carthage/FirebaseMLVisionBinary.json"
binary "https://dl.google.com/dl/firebase/ios/carthage/FirebasePerformanceBinary.json"
binary "https://dl.google.com/dl/firebase/ios/carthage/FirebaseProtobufBinary.json"
binary "https://dl.google.com/dl/firebase/ios/carthage/FirebaseRemoteConfigBinary.json"
binary "https://dl.google.com/dl/firebase/ios/carthage/FirebaseStorageBinary.json"

### Hungryhub Library Not Support in Carthage
- Japx -> (Dependency "Japx" has no shared framework schemes for any of the platforms: iOS)
- EMAlertController -> (Dependency "EMAlertController" has no shared framework schemes)
- Alerts-Pickers -> (Dependency "Alerts-Pickers" has no shared framework schemes for any of the platforms: iOS)
- youtube-ios-player-helper-swift -> (Dependency "youtube-ios-player-helper-swift" has no shared framework schemes for any of the platforms: iOS)
- Dropper -> (Dependency "Dropper" has no shared framework schemes for any of the platforms: iOS)
- GCCountryPicker" -> ( Dependency "GCCountryPicker" has no shared framework schemes for any of the platforms: iOS)
- Lightbox
- DKImagePickerController
- CTNotificationService

### Change Hungryhub Library with new Library in Carthage
- github "AppsFlyerSDK/AppsFlyerFramework" ~> 6.0.3
/** New Model Library AppsFlyerFramework */
"https://raw.githubusercontent.com/AppsFlyerSDK/AppsFlyerFramework/master/Carthage/appsflyer-ios.json”
- github "zendesk/support_sdk_ios" ~> 5.0.12.
/** New Model Library zendesk */
binary "https://zendesk.jfrog.io/zendesk/libs-releases-local/ios/zendesk/ZendeskCoreSDK/ZendeskCoreSDK.json" == 2.3.0
binary "https://zendesk.jfrog.io/zendesk/libs-releases-local/ios/zendesk/SupportSDK/SupportSDK.json" == 5.0.5
binary "https://zendesk.jfrog.io/zendesk/libs-releases-local/ios/zendesk/SupportProvidersSDK/SupportProvidersSDK.json" == 5.0.5
binary "https://zendesk.jfrog.io/zendesk/libs-releases-local/ios/zendesk/CommonUISDK/CommonUISDK.json" == 5.0.0
binary "https://zendesk.jfrog.io/zendesk/libs-releases-local/ios/zendesk/MessagingSDK/MessagingSDK.json" == 3.6.0
binary "https://zendesk.jfrog.io/zendesk/libs-releases-local/ios/zendesk/MessagingAPI/MessagingAPI.json" == 3.6.0
binary "https://zendesk.jfrog.io/zendesk/libs-releases-local/ios/zendesk/SDKConfigurations/SDKConfigurations.json" == 1.1.5
/** Just Input One Library in Facebook */
github "facebook/Facebook-SDK-Swift"




### Good Luck 😁
