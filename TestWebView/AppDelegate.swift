//
//  AppDelegate.swift
//  TestWebView
//
//  Created by khoa on 22/10/2019.
//  Copyright © 2019 Khoa Pham. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

var newWindow: UIWindow!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
//
//
//                        print(UIApplication.shared.connectedScenes)
//        let scene = UIWindowScene(session: connectingSceneSession, connectionOptions: options)
//
//                        // Configure a window for the screen.
//                        self.newWindow = UIWindow(frame: CGRect(x: 0, y: 0, width: 1000, height: 500))
//        //                self.newWindow.backgroundColor = UIColor.yellow
//                        // Install a custom root view controller in the window.
//
//                        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "other") as! OtherViewController
//                        self.newWindow.rootViewController = viewController
//                        self.newWindow.windowScene = scene
//
//                        // You must show the window explicitly.
//                        self.newWindow.isHidden = false

        return UISceneConfiguration(name: "External configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

