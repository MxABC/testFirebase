//
//  AppDelegate.swift
//  testFireBase
//
//  Created by lbxia on 2023/6/16.
//

import UIKit
import FirebaseCore

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    lazy var window: UIWindow? = UIWindow(frame: UIScreen.main.bounds)

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window?.rootViewController = MainViewController()
        
        self.window?.makeKeyAndVisible()
        
        let fileName = "GoogleService-Info";
        let googleServicePath : String! = Bundle.main.path(forResource: fileName, ofType: "plist")
        let options : FirebaseOptions! = FirebaseOptions(contentsOfFile: googleServicePath)
        FirebaseApp .configure(options: options)
        
        
        
        print("")
        print("")

        return true
    }

  


}

