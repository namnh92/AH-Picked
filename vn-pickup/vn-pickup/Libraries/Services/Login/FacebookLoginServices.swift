////
////  FacebookLoginServices.swift
////  vn-pickup
////
////  Created by Nguyễn Nam on 6/15/19.
////  Copyright © 2019 Nguyễn Nam. All rights reserved.
////
//
//import UIKit
//import AWSMobileClient
//
//class FacebookLoginServices: LoginProtocol {
//    // MARK: - Variables
//    var userProfile: UserProfileEntity?
//    
//    private let target: UIViewController!
//    let hostedUIOptions = HostedUIOptions(scopes: ["public_profiles", "email"], identityProvider: "Facebook")
//    
//    // MARK:- Init
//    required init(target viewController: UIViewController) {
//        self.target = viewController
//    }
//    
//    // MARK: - Action
//    func doLogin() {
////        AWSMobileClient.sharedInstance().federatedSignIn(providerName: IdentityProvider.developer.rawValue,
////                                                         token: "",
////                                                         federatedSignInOptions: FederatedSignInOptions(cognitoIdentityId: identityId!)) { (userState, error) in
////                                                            if let error = error as? AWSMobileClientError {
////                                                                print(error.localizedDescription)
////                                                            }
////                                                            if let userState = userState {
////                                                                print("Status: \(userState.rawValue)")
////                                                            }
////        }
//        
////        let loginManager = LoginManager(loginBehavior: .browser, defaultAudience: .friends)
////
////        loginManager.logIn(readPermissions: [.email], viewController: self.target) { [weak self] (result) in
////            guard let sSelf = self else { return }
////            switch result {
////            case .success(_,_,let token):
////                sSelf.getDataFB(accessToken: token)
////            case .cancelled: break
////            case .failed(_): break
////            }
////        }
//    }
//    
//    func didLogin() {
//        MainVC.push()
//    }
//    
//    // MARK: - Private method
////    private func getDataFB(accessToken: AccessToken) {
////        GraphRequest(graphPath: graphPath, parameters: parameters, accessToken: accessToken, httpMethod: .GET, apiVersion: .defaultVersion).start {(httpResponse, result) in
////            switch result {
////            case .success(let response):
////                if let dict = response.dictionaryValue, let id = dict["id"] as? String {
////                    print(dict)
////                    self.didLogin()
////                }
////            case .failed(let error):
////                print(error)
////            }
////        }
////    }
//}
