//
//  HomeViewController.swift
//  dailyGoal
//
//  Created by Caponong, Lauren on 2/22/16.
//  Copyright © 2016 Caponong, Lauren. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var goalLabel: UILabel!
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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
