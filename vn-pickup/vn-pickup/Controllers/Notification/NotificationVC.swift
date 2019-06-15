//
//  NotificationVC.swift
//  vn-pickup
//
//  Created by Nguyễn Nam on 6/15/19.
//  Copyright © 2019 Nguyễn Nam. All rights reserved.
//

import UIKit

class NotificationVC: BaseVC {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.isHidden = true
    }

}
