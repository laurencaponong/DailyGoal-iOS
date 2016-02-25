//
//  AddNewGoalViewController.swift
//  dailyGoal
//
//  Created by Caponong, Lauren on 2/22/16.
//  Copyright © 2016 Caponong, Lauren. All rights reserved.
//

import UIKit

class AddNewGoalViewController: UIViewController {
    
    var delegate: displayGoalAndStepsDelegate? = nil
    
    @IBOutlet weak var newGoalTextField: UITextField!
    @IBOutlet weak var stepOneTextField: UITextField!
    @IBOutlet weak var stepTwoTextField: UITextField!
    @IBOutlet weak var stepThreeTextField: UITextField!
    
    @IBOutlet weak var saveButtonTapped: UIButton!
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    @IBAction func saveButtonTapped(sender: AnyObject) {
        
        if (delegate != nil) {
            
            delegate!.displayGoalsAndSteps(newGoalTextField.text!, step1: stepOneTextField.text!, step2: stepTwoTextField.text!, step3: stepThreeTextField.text!)
        }
        
                dismissViewControllerAnimated(true, completion: nil)
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        saveButtonTapped.layer.borderWidth = 1
        saveButtonTapped.layer.borderColor = UIColor.whiteColor().CGColor
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        
        view.endEditing(true)
    }
    

}
