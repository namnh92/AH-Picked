//
//  BaseVC.swift
//  vn-pickup
//
//  Created by Nguyễn Nam on 6/15/19.
//  Copyright © 2019 Nguyễn Nam. All rights reserved.
//

import UIKit
import AWSAppSync

class BaseVC: UIViewController {

    //Reference AppSync client
    var appSyncClient: AWSAppSyncClient?
    //Set a variable to discard at the class level
    var discard: Cancellable?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Reference AppSync client from App Delegate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        
        setupView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.isHidden = false
    }
    
    func setupView() {
        addBackNavigationBarbutton()
    }
    
    private func addBackNavigationBarbutton() {
        let backView = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        let backButton = UIButton(frame: backView.frame)
        backButton.addTarget(self, action: #selector(invokeBackButton(_:)), for: .touchUpInside)
        
        let backImageView = UIImageView(frame: CGRect(x: 0, y: 10, width: 28, height: 18))
        backImageView.image = UIImage(named: "icon_back")
        backView.addSubview(backImageView)
        backView.addSubview(backButton)
        
        let backItem = UIBarButtonItem.init(customView: backView)
        
        let negativeSpacer = UIBarButtonItem.init(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
        negativeSpacer.width = -25
        navigationItem.leftBarButtonItems = [negativeSpacer, backItem]
    }
    
    @objc private func invokeBackButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
