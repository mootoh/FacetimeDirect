//
//  AppDelegate.swift
//  FaceTimeDirect
//
//  Created by Motohiro Takayama on 11/3/15.
//  Copyright © 2015 Motohiro Takayama. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationDidBecomeActive(application: UIApplication) {
        dispatch_async(dispatch_get_main_queue(), {
            let contact = NSBundle.mainBundle().objectForInfoDictionaryKey("contact") as! String
            let url = NSURL(string:"facetime://" + contact)
            application.openURL(url!)
//            abort();
        })
    }
}

