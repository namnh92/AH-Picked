//
//  IndicatiorView.swift
//  vn-pickup
//
//  Created by Nguyễn Nam on 6/15/19.
//  Copyright © 2019 Nguyễn Nam. All rights reserved.
//

import UIKit
import SVProgressHUD

class IndicatiorView: UIView {

    static func show() {
        SVProgressHUD.setDefaultMaskType(.custom)
        SVProgressHUD.setBackgroundLayerColor(UIColor.black.alpha(0.2))
        SVProgressHUD.show()
    }
    
    static func hide() {
        SVProgressHUD.dismiss()
    }

}
