//
//  LoginProtocol.swift
//  vn-pickup
//
//  Created by Nguyễn Nam on 6/15/19.
//  Copyright © 2019 Nguyễn Nam. All rights reserved.
//

import UIKit

protocol LoginProtocol {
    init(target viewController: UIViewController)
    func doLogin()
    func didLogin()
}
