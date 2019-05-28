//
//  AppDelegate.swift
//  FloatingButton
//
//  Created by Yi JIANG on 28/5/19.
//  Copyright © 2019 Siphty Pty Ltd. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        AppFlowRouter.initFloatingButtonView()
    }


}

