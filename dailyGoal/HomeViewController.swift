//
//  HomeViewController.swift
//  dailyGoal
//
//  Created by Caponong, Lauren on 2/22/16.
//  Copyright © 2016 Caponong, Lauren. All rights reserved.
//

import UIKit
import ChameleonFramework
import TKAnimatedCheckButton



class HomeViewController: UIViewController, changeGoalDelegate {
    
    func setGoal() {
        goalLabel.text = ""
    }
    
    
    @IBOutlet weak var stepOneView: UIView!
    
    var button: TKAnimatedCheckButton! = nil
    var button2: TKAnimatedCheckButton! = nil
    var button3: TKAnimatedCheckButton! = nil
    
    func makeButton () {
        
        button = TKAnimatedCheckButton(frame: CGRectMake(40, 250, 50, 50))
        button.addTarget(self, action: "toggle1:", forControlEvents:.TouchUpInside)
        button.skeletonColor = UIColor.flatYellowColor().CGColor
        view.addSubview(button)
        
        button2 = TKAnimatedCheckButton(frame: CGRectMake(160, 250, 50, 50))
        button2.addTarget(self, action: "toggle2:", forControlEvents:.TouchUpInside)
        button2.skeletonColor = UIColor.flatOrangeColor().CGColor
        view.addSubview(button2)
        
        button3 = TKAnimatedCheckButton(frame: CGRectMake(287, 250, 50, 50))
        button3.addTarget(self, action: "toggle3:", forControlEvents:.TouchUpInside)
        button3.skeletonColor = UIColor.flatRedColor().CGColor
        view.addSubview(button3)
        
        
    }
    
    func toggle1(sender: AnyObject!) {
        button.checked = !button.checked
    }
    
    
    func toggle2(sender: AnyObject!) {
        button2.checked = !button2.checked
    }
    
    
    func toggle3(sender: AnyObject!) {
        button3.checked = !button3.checked
    }
    
    

    

    @IBOutlet weak var goalLabel: UILabel!
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UITabBar.appearance().tintColor = UIColor.whiteColor()
        UITabBar.appearance().barTintColor = UIColor.blackColor()
        
        makeButton()
        setGoal()
        
    }    
    
    //
    //    @IBAction func plusButtonTapped(sender: AnyObject) {
    //
    //        let alertController = UIAlertController(title: "New Goal", message: "Enter a new goal below:", preferredStyle: .Alert)
    //
    //        let confirmAction = UIAlertAction(title: "Confirm", style: .Default) { (_) in
    //            if let field = alertController.textFields![0] as? UITextField {
    //                // store your data
    //                NSUserDefaults.standardUserDefaults().setObject(field.text, forKey: "currentGoal")
    //                NSUserDefaults.standardUserDefaults().synchronize()
    //                self.goalLabel.text = field.text
    //
    //            } else {
    //                print("User did not enter a goal")
    //            }
    //        }
    //
    //        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (_) in }
    //
    //        alertController.addTextFieldWithConfigurationHandler { (textField) in
    //            textField.placeholder = "Enter a new goal here"
    //        }
    //
    //        alertController.addAction(confirmAction)
    //        alertController.addAction(cancelAction)
    //
    //        self.presentViewController(alertController, animated: true, completion: nil)
    //        
    //    }
    
    
    

}
