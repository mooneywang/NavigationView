//
//  AppDelegate.swift
//  NavigationBarSample
//
//  Created by 王梦杰 on 2020/5/24.
//  Copyright © 2020 MooneyWang. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }
}

let SCREEN_W: CGFloat = UIScreen.main.bounds.width
let SCREEN_H: CGFloat = UIScreen.main.bounds.height
let NAVIGATIONBAR_H: CGFloat = 44
var IS_BANGSSCREEN: Bool = {
    if let window = UIApplication.shared.windows.first {
        return window.safeAreaInsets.bottom > 0
    }
    return false
}()

