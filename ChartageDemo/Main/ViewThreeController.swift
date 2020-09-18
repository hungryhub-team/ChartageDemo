//
//  ViewThreeController.swift
//  ChartageDemo
//
//  Created by ahmad shiddiq on 18/09/20.
//  Copyright © 2020 ahmad shiddiq. All rights reserved.
//

import Foundation
import UIKit
import TTRangeSlider
import DrawerView
import SwiftyJSON
import SwiftKeychainWrapper
import ZendeskCoreSDK
import Bolts
import Presentr
import CountryPicker
import EasyTipView
import CleverTapSDK
import FacebookLogin
import FacebookCore
import FirebaseAuth
import FirebaseCore
import FirebaseDatabase
import FirebaseCrashlytics

class ViewThreeController: UIViewController{
    
    @IBOutlet weak var viewDescription: UIView!
    @IBOutlet weak var buttonRefresh: UIButton!
    var easyTipView : EasyTipView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setComponent()
        handleRefresh()
    }
    
    func setComponent(){
        let array = [ "one", "two" ]
        let datajson = JSON.init(array)
        print("data json : ",datajson)
        
        _ = KeychainWrapper.standard.set("\(datajson)", forKey: "savedata")
        let opensavedata = KeychainWrapper.standard.string(forKey: "savedata")
        
        let data = JSON.init(opensavedata)
        print("data : ", data)
        
        
    }
    
    func handleRefresh()
    {
      if self.easyTipView == nil
      {
        self.easyTipView = EasyTipView(text: "Test Carthage")
        self.easyTipView.show(animated: true, forView: self.viewDescription, withinSuperview: nil)
      }
      else
      {
        self.easyTipView.dismiss()
        self.easyTipView = nil
      }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
}
