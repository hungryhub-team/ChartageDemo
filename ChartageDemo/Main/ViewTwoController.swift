//
//  ViewTwoController.swift
//  ChartageDemo
//
//  Created by ahmad shiddiq on 18/09/20.
//  Copyright © 2020 ahmad shiddiq. All rights reserved.
//

import Foundation
import UIKit
import SwiftSoup
import TagListView
import FSCalendar
import AppsFlyerLib

class ViewTwoController: UIViewController{
    @IBOutlet weak var taglist: TagListView!
    @IBOutlet weak var calendar: FSCalendar!
    @IBOutlet weak var buttonPlease: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupComponent()
        setupAction()
    }
    
    func setupComponent(){
        taglist.textFont = UIFont.systemFont(ofSize: 12)
        taglist.alignment = .center
        taglist.addTag("senin")
        taglist.addTag("selasa")
        taglist.addTag("rabu")
        taglist.addTag("kamis")
        taglist.addTag("jumat")
        taglist.addTag("sabtu")
    }
    
    func setupAction(){
        buttonPlease.addTarget(self, action: #selector(gotoThreeController), for: .touchUpInside)
    }
    
    @objc func gotoThreeController(){
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ViewThreeController") as! ViewThreeController
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

}
