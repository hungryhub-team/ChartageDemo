//
//  AppDelegate.swift
//  ChartageDemo
//
//  Created by ahmad shiddiq on 17/09/20.
//  Copyright © 2020 ahmad shiddiq. All rights reserved.
//

import UIKit
import IQKeyboardManager
import SDWebImage
import AppsFlyerLib

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate{
    
    var window: UIWindow?
    var initialViewController :UIViewController?
    var appflyerlib: AppsFlyerLib?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
         
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        AppsFlyerLib.shared().isDebug = true
        AppsFlyerLib.shared().appsFlyerDevKey = "devKey"
        AppsFlyerLib.shared().appleAppID = "123456789"
        AppsFlyerLib.shared().delegate = self
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        let navigationController = UINavigationController.init(rootViewController: viewController)
        self.window?.rootViewController = navigationController

        self.window?.makeKeyAndVisible()
        
        return true
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
    }
}

extension AppDelegate: AppsFlyerLibDelegate {
    func onConversionDataSuccess(_ conversionInfo: [AnyHashable : Any]) {
        print("Data success")
    }

    func onConversionDataFail(_ error: Error) {
        print("Data error")
    }
    
    func onAppOpenAttribution(_ attributionData: [String : Any]) {
        print("Attribute :",attributionData)
    }
    
    func onAppOpenAttributionFailure(_ error: Error) {
        print("Error")
    }
}
