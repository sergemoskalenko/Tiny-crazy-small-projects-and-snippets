//
//  AppDelegate.swift
//  ios-empty-swift
//
//  Created by Serge Moskalenko on 03.05.16.
//  Skype:camopu-ympo
//  mob: +380677629137
//  Copyright © 2016 Serge Moskalenko. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    var textField: UITextField
    var alertString: String {
        get {
            return self.alertString
        }
        set {
            var quotes: [String] = ["God couldn't be everywhere, so he created mothers.", "Be not afraid of going slowly, be afraid only of standing still.", "Learn from yesterday, live for today, hope for tomorrow.", "I hear and I forget, I see and I remember. I do and I understand.", "In teaching others we teach ourselves.", "Men never remember, but women never forget.", "Once you have learned to love, You will have learned to live."]
            var name: String = newValue.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
            if name.characters.count == 0 {
                name = "Incognito"
            }
            let quote: String = quotes[Int(arc4random() % 7)]
            let message: String = "Hi, \(name)!\n\n\(quote)"
            let alert: UIAlertView = UIAlertView(title: "", message: message, delegate: nil, cancelButtonTitle: "OK", otherButtonTitles: "")
            // shows alert to user
            alert.show()
        }
    }

    override init() {
        self.textField = UITextField(frame: CGRectMake(0, 0, 200, 30))
    }
    deinit {

    }

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        let viewController = UIViewController()
        self.window?.rootViewController = viewController  // fix for iOS9, Xcode 7.3
        
        // Override point for customization after application launch.
        self.window!.backgroundColor = UIColor.whiteColor()
        self.window!.makeKeyAndVisible()
        let button: UIButton = UIButton(type: .RoundedRect)
        button.backgroundColor = UIColor(red: 193.0 / 255, green: 1.0, blue: 241.0 / 255, alpha: 1.0)
        button.frame = CGRectMake(0, 0, 200, 30)
        button.setTitle("Do It", forState: .Normal)
        var centerPoint: CGPoint = self.window!.center
        centerPoint.y -= 30
        button.center = centerPoint
        button.addTarget(self, action: #selector(AppDelegate.doIt(_:)), forControlEvents: .TouchUpInside)
        button.tag = 777
        self.window!.addSubview(button)
        self.textField = UITextField(frame: CGRectMake(0, 0, 200, 30))
        self.textField.placeholder = "enter your name"
        self.textField.backgroundColor = UIColor(white: 224.0 / 255, alpha: 1.0)
        centerPoint.y -= 40
        self.textField.center = centerPoint
        self.window!.addSubview(self.textField)
        return true
    }
    

    func doIt(button: UIButton) {
        self.textField.resignFirstResponder()
        self.alertString = self.textField.text!
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

