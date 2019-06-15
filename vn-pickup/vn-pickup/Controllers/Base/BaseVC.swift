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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Reference AppSync client from App Delegate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        
        fetchData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.pop(animated: animated)
        
        navigationController?.navigationBar.isHidden = false
    }

    // MARK: - Data managements
    private func fetchData() {
        appSyncClient?.fetch(query: ListTodosQuery())  { (result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
                return
            }
            result?.data?.listTodos?.items!.forEach { print(($0?.name)! + " " + ($0?.description)!) }
        }
    }
}
