//
//  AppDelegate.swift
//  TodoList
//
//  Created by Cho Junyeong on 2020/11/27.
//  Copyright © 2020 junyeong-cho. All rights reserved.
//

import ReSwift
import UIKit

let mainStore = Store<AppState>(
    reducer: taskReducer,
    state: nil
)

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }


}

