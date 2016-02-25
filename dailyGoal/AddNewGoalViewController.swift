//
//  AddNewGoalViewController.swift
//  dailyGoal
//
//  Created by Caponong, Lauren on 2/22/16.
//  Copyright © 2016 Caponong, Lauren. All rights reserved.
//

import UIKit

class AddNewGoalViewController: UIViewController {
    
    @IBOutlet weak var newGoalTextField: UITextField!
    var delegate: changeGoalDelegate?
    
    
    @IBOutlet weak var saveButtonTapped: UIButton!
    
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    
    @IBAction func saveButtonTapped(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        
//        if(segue.identifier == "yourIdentifierInStoryboard") {
//            
//            var yourNextViewController = (segue.destinationViewController as! HomeViewController)
//            yourNextViewController.delegate = self
//        }
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
            delegate?.setGoal()

        // Do any additional setup after loading the view.
            
            saveButtonTapped.layer.borderWidth = 1
            saveButtonTapped.layer.borderColor = UIColor.whiteColor().CGColor
            
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
