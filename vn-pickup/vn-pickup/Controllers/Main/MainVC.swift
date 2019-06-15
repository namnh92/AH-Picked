//
//  MainVC.swift
//  vn-pickup
//
//  Created by Nguyễn Nam on 6/15/19.
//  Copyright © 2019 Nguyễn Nam. All rights reserved.
//

import UIKit

class MainVC: BaseVC {

    override func viewDidLoad() {
        super.viewDidLoad()

        fetchData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.isHidden = true
    }
    
    // MARK: - Data managements
    private func fetchData() {
        IndicatiorView.show()
        appSyncClient?.fetch(query: ListTodosQuery(limit: 3))  { (result, error) in
            IndicatiorView.hide()
            if error != nil {
                print(error?.localizedDescription ?? "")
                return
            }
            result?.data?.listTodos?.items!.forEach { print(($0?.name)! + " " + ($0?.description)!) }
        }
    }
}
