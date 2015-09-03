//
//  ViewController.swift
//  Learn Notification
//
//  Created by SB 8 on 9/3/15.
//  Copyright (c) 2015 Snapbuck. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func registerNotifTypes(sender: AnyObject) {
        
        
        let userNotifTypes = UIUserNotificationType(rawValue: UIUserNotificationType.Alert.rawValue | UIUserNotificationType.Sound.rawValue | UIUserNotificationType.Badge.rawValue)
        
        
        let settings = UIUserNotificationSettings(forTypes: userNotifTypes, categories: nil)
        
        UIApplication.sharedApplication().registerUserNotificationSettings(settings)
        
        
        
        
        
    }
    
    @IBAction func clearScheduledNotifs(sender: AnyObject) {
        
        UIApplication.sharedApplication().cancelAllLocalNotifications()
        
        
        
    }

    @IBAction func setUpLocalNotif(sender: AnyObject) {
        
        let notif = UILocalNotification()
        notif.fireDate = NSDate().dateByAddingTimeInterval(5.0)
        notif.alertBody = "alert body"
        notif.alertTitle = "alert title"
        notif.alertAction = "some action"
        notif.soundName = UILocalNotificationDefaultSoundName
        notif.applicationIconBadgeNumber = 1
        notif.userInfo = ["my key" : "my value",]
        UIApplication.sharedApplication().scheduleLocalNotification(notif)
        
        
        
        
    }

    @IBAction func setUpRemoteNotif(sender: AnyObject) {
        
        
        
        
    }
}

