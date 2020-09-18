//
//  ViewController.swift
//  ChartageDemo
//
//  Created by ahmad shiddiq on 18/09/20.
//  Copyright © 2020 ahmad shiddiq. All rights reserved.
//

import Foundation
import UIKit
import SDWebImage
import PromiseKit
import OmiseSDK
import ObjectMapper
import Kingfisher
import IBAnimatable
import Cosmos
import NVActivityIndicatorView
import KRPullLoader

class ViewController: UIViewController{
    @IBOutlet weak var imageProfile: UIImageView!
    @IBOutlet weak var imageDescription: UIImageView!
    @IBOutlet weak var loadingIndicator: NVActivityIndicatorView!
    @IBOutlet weak var buttonPlease: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupComponent()
        getTokenomise()
        setupActionComponent()
    }
    
    func setupComponent(){
        imageProfile.sd_setImage(with: URL(string: "http://www.domain.com/path/to/image.jpg"), placeholderImage: UIImage(named: "image_profile"))
        let url = URL(string: "https://example.com/image.png")
        imageDescription.kf.setImage(with: url)
    }
    
    func getTokenomise(){
        let omiseClient = Client(publicKey: "pkey_test_51610lkzezitno1m8r4")
    
        let tokenParameters = Token.CreateParameter(name: "JOHN DOE", number: "4242424242424242", expirationMonth: 11, expirationYear: 2022, securityCode: "123")
        let request = Request<Token>(parameter: tokenParameters)
        
        
        loadingIndicator.startAnimating()
        omiseClient.send(request) { (result) in
            switch result {
            case .success(let token):
                print("token omise :",token.id)
              
            let deadlineTime = DispatchTime.now() + .seconds(5)
                DispatchQueue.main.asyncAfter(deadline: deadlineTime) {
                    self.loadingIndicator.stopAnimating()
                }
            case .failure(let error):
                print("failed token omise : \(error)")
                
                let deadlineTime = DispatchTime.now() + .seconds(5)
                DispatchQueue.main.asyncAfter(deadline: deadlineTime) {
                    self.loadingIndicator.stopAnimating()
                }
            }
        }
    }
    
    func setupActionComponent(){
        buttonPlease.addTarget(self, action: #selector(gotoTwoController), for: .touchUpInside)
    }
        
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    @objc func gotoTwoController(){
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ViewTwoController") as! ViewTwoController
        navigationController?.pushViewController(viewController, animated: true)
    }
    
}
