//
//  RootTabBarController.swift
//  vn-pickup
//
//  Created by Nguyễn Nam on 6/15/19.
//  Copyright © 2019 Nguyễn Nam. All rights reserved.
//

import UIKit
//import ESTabBarController_swift
enum TabBarItem : Int {
    case home = 0
    case history = 1
    case notification = 2
    case payment = 3
    case account = 4
    
    static let tabBarItems = [home : "Home",
                              history : "History",
                              notification : "Inbox",
                              payment : "Payment",
                              account : "Account"]
    
    func getTabBarItems() -> String {
        return TabBarItem.tabBarItems[self] ?? ""
    }
    
    static let tabBarImages = [home : "icon_home",
                               history : "icon_history",
                               notification : "icon_inbox",
                               payment : "icon_payment",
                               account : "icon_account"]
    
    func getTabBarImages() -> String {
        return TabBarItem.tabBarImages[self] ?? ""
    }
}

class RootTabBarController: UITabBarController {

    static let instance = RootTabBarController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        viewControllers = [navController(MainVC.create(), tab: .home),
                           navController(HistoryVC.create(), tab: .history),
                           navController(NotificationVC.create(), tab: .notification),
                           navController(PaymentVC.create(), tab: .payment),
                           navController(AccountVC.create(), tab: .account)]
        tabBar.tintColor = UIColor.white
        tabBar.unselectedItemTintColor = UIColor.white
        //        UITabBarItem.appearance().titlePositionAdjustment = UIOffset(horizontal: 0, vertical: -15)
//        
//        UITabBarItem.appearance().setTitleTextAttributes([
//            .font: UIFont(name: "Poppins-Medium", size: 12.0)!,
//            .foregroundColor: UIColor(red: 51, green: 51, blue: 51),
//            .kern: 0.0
//            ], for: .normal)
        
        tabBar.barTintColor = UIColor(red: 252, green: 183, blue: 18)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    private func navController(_ rootVC :UIViewController, tab: TabBarItem) -> UINavigationController {
        let navigationVC = UINavigationController.init(rootViewController: rootVC)
        navigationVC.tabBarItem.title = tab.getTabBarItems()
        navigationVC.tabBarItem.image = UIImage.init(named: tab.getTabBarImages())
        return navigationVC
    }
}
