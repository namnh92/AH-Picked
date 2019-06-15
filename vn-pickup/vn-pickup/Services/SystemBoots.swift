//
//  SystemBoots.swift
//  vn-pickup
//
//  Created by Nguyễn Nam on 6/15/19.
//  Copyright © 2019 Nguyễn Nam. All rights reserved.
//

import UIKit

class SystemBoots: NSObject {
    // MARK: - Singleton
    static let sharedInstance = SystemBoots()
    
    // MARK: - Variables
    weak var appDelegate: AppDelegate? = UIApplication.shared.delegate as? AppDelegate
    
    // MARK: - Actions
    func changeRoot(window: inout UIWindow?, rootController: UIViewController) {
        // Setup app's window
        guard window == nil else {
            window?.rootViewController = rootController
            window?.makeKeyAndVisible()
            return
        }
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .clear
        window?.rootViewController = rootController
        window?.makeKeyAndVisible()
    }
}
