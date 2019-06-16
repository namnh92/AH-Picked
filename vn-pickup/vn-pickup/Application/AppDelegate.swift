//
//  AppDelegate.swift
//  vn-pickup
//
//  Created by Nguyễn Nam on 6/15/19.
//  Copyright © 2019 Nguyễn Nam. All rights reserved.
//

import UIKit
import IQKeyboardManagerSwift
import AWSAppSync
import AWSCore
import AWSPinpoint
import AWSMobileClient
import UserNotifications

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appSyncClient: AWSAppSyncClient?
    /** start code copy **/
    var pinpoint: AWSPinpoint?
    /** end code copy **/

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
//        let loginVC = LoginVC.create()
//        let nav = UINavigationController(rootViewController: loginVC)
//        SystemBoots.sharedInstance.changeRoot(window: &window, rootController: nav)
        
        SystemBoots.sharedInstance.changeRoot(window: &window, rootController: RootTabBarController.instance)
        
        // Config iqkeyboard
        IQKeyboardManager.shared.enable = true
        IQKeyboardManager.shared.enableAutoToolbar = true
        IQKeyboardManager.shared.shouldResignOnTouchOutside = true
        
        // Config AWS Sync
        do {
            // You can choose the directory in which AppSync stores its persistent cache databases
            let cacheConfiguration = try AWSAppSyncCacheConfiguration()
            
            // AppSync configuration & client initialization
            let appSyncServiceConfig = try AWSAppSyncServiceConfig()
            
            let appSyncConfig = try AWSAppSyncClientConfiguration(appSyncServiceConfig: appSyncServiceConfig, cacheConfiguration: cacheConfiguration)
            appSyncClient = try AWSAppSyncClient(appSyncConfig: appSyncConfig)
            // Set id as the cache key for objects. See architecture section for details
            appSyncClient?.apolloClient?.cacheKeyForObject = { $0["id"] }
        } catch {
            print("Error initializing appsync client. \(error)")
        }
        
        
        // Create AWSMobileClient to connect with AWS
        AWSMobileClient.sharedInstance().initialize { (userState, error) in
            if let error = error {
                print("Error initializing AWSMobileClient: \(error.localizedDescription)")
            } else if let userState = userState {
                print("AWSMobileClient initialized. Current UserState: \(userState.rawValue)")
            }
        }
        
        // Initialize Pinpoint
        let pinpointConfiguration = AWSPinpointConfiguration.defaultPinpointConfiguration(launchOptions: launchOptions)
        pinpoint = AWSPinpoint(configuration: pinpointConfiguration)
        //
        hideNaviBarBG()
        
        registerForPushNotifications()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

    // MARK: - Private method
    private func hideNaviBarBG() {
        // Sets background to a blank/empty image
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        // Sets shadow (line below the bar) to a blank image
        UINavigationBar.appearance().shadowImage = UIImage()
        // Sets the translucent background color
        UINavigationBar.appearance().backgroundColor = .clear
        // Set translucent. (Default value is already true, so this can be removed if desired.)
        UINavigationBar.appearance().isTranslucent = true
    }
    
    func application(
        _ application: UIApplication,
        didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        let profile: AWSPinpointEndpointProfile = (pinpoint?.targetingClient.currentEndpointProfile())!
        print("EndpointId: \(profile.endpointId)")
        pinpoint!.notificationManager.interceptDidRegisterForRemoteNotifications(
            withDeviceToken: deviceToken)
    }
    
    func application(
        _ application: UIApplication,
        didReceiveRemoteNotification userInfo: [AnyHashable: Any],
        fetchCompletionHandler completionHandler:
        @escaping (UIBackgroundFetchResult) -> Void) {
        
        pinpoint!.notificationManager.interceptDidReceiveRemoteNotification(
            userInfo, fetchCompletionHandler: completionHandler)
        
        if (application.applicationState == .active) {
            if let aps = userInfo["aps"] as? NSDictionary {
                if let alert = aps["alert"] as? NSDictionary {
                    if let messageTitle = alert["title"] as? String,
                        let messageContent = alert["body"] as? String {
                        let alert = UIAlertController(title: messageTitle as String,
                                                      message: messageContent,
                                                      preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { _ in
//                            OrderDetailVC.push(prepare: { vc in
//                                vc.orderId = "19f54737-5681-45d4-82ed-0a2db22a16a3"
//                            })
                        }))
                        
                        UIApplication.shared.keyWindow?.rootViewController?.present(
                            alert, animated: true, completion:nil)
                    }
                    
                    
                } else if let alert = aps["alert"] as? String {
                    //Do stuff
                }
            }
        } else {
//            OrderDetailVC.push(prepare: { vc in
//                vc.orderId = "19f54737-5681-45d4-82ed-0a2db22a16a3"
//            })
        }
    }
    
    // Request user to grant permissions for the app to use notifications
    func registerForPushNotifications() {
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) {
            (granted, error) in
            print("Permission granted: \(granted)")
            // 1. Check if permission granted
            guard granted else { return }
            // 2. Attempt registration for remote notifications on the main thread
            DispatchQueue.main.async {
                UIApplication.shared.registerForRemoteNotifications()
            }
        }
    }
}

extension AppDelegate: UNUserNotificationCenterDelegate {
    
}

