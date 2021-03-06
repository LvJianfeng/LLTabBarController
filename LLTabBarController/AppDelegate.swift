//
//  AppDelegate.swift
//  LLTabBarController
//
//  Created by LvJianfeng on 2017/3/14.
//  Copyright © 2017年 LvJianfeng. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow.init(frame: UIScreen.main.bounds)
        let tabBarViewController: LLImageTabBarController = LLImageTabBarController()
        // 线条显示控制
        // tabBarViewController.isShowLine = true
        
        // 注意了 选中图片的命名请在非选中图片后加_selected  例如:未选中ask.png  选中ask_selected.png
        // tabBarData使用需要在其他自定义参数后进行赋值 哈哈
        // TabBar数据 ([图片名称], [根控制器])
        tabBarViewController.tabBarData = (["home", "weitao", "ask", "cart", "my"], [OneTableViewController(), TwoTableViewController(), ThreeTableViewController(), FourTableViewController(), FiveTableViewController()])
        window?.rootViewController = tabBarViewController
        window?.makeKeyAndVisible()
        
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


}

