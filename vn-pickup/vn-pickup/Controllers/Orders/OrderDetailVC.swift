//
//  OrderDetailVC.swift
//  vn-pickup
//
//  Created by Nguyễn Nam on 6/15/19.
//  Copyright © 2019 Nguyễn Nam. All rights reserved.
//

import UIKit

class OrderDetailVC: BaseVC {

    @IBOutlet weak var qrImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func setupView() {
        super.setupView()
        
        qrImageView.generateQRImage(string: "demodata")
    }

    @IBAction func invokeCloseButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
