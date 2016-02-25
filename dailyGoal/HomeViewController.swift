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
import CoreData
import Social



class HomeViewController: UIViewController, displayGoalAndStepsDelegate {
    
    //Labels
    @IBOutlet weak var goalLabel: UILabel!
    @IBOutlet weak var stepOneLabel: UILabel!
    @IBOutlet weak var stepTwoLabel: UILabel!
    @IBOutlet weak var stepThreeLabel: UILabel!
    
    @IBOutlet weak var stepOneView: UIView!
    
    //Buttons
    var button: TKAnimatedCheckButton! = nil
    var button2: TKAnimatedCheckButton! = nil
    var button3: TKAnimatedCheckButton! = nil
    
    //Creating buttons
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

    //Button toggles
    func toggle1(sender: AnyObject!) {button.checked = !button.checked}
    func toggle2(sender: AnyObject!) {button2.checked = !button2.checked}
    func toggle3(sender: AnyObject!) {
        button3.checked = !button3.checked
        goalsCompleted()
    }

    func goalsCompleted() {
        
        if (button.checked && button2.checked && button3.checked) {
            print("Goal completed")
            tweetThis()
        }
        
    }
    
    func tweetThis() {
        
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeTwitter) {
            var tweetSheet = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
            
            tweetSheet.setInitialText("I completed my goal: \(goalLabel.text!) for today! Party! 🙌🏽")
            
            self.presentViewController(tweetSheet, animated: true, completion: nil)
        } else {
            print ("Error")
        }
        
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    let managedObjectContext = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UITabBar.appearance().tintColor = UIColor.whiteColor()
        UITabBar.appearance().barTintColor = UIColor.blackColor()
        
        print(managedObjectContext)
        
        let newItem = NSEntityDescription.insertNewObjectForEntityForName("Goal", inManagedObjectContext: self.managedObjectContext) as! Goal
        
        newItem.goalName = "New Goal"
        newItem.step1 = "Step one goal"
        
        
    }
    
    func displayGoalsAndSteps(goal: String, step1: String, step2: String, step3: String) {
        goalLabel.text = goal as String
        stepOneLabel.text = step1 as String
        stepTwoLabel.text = step2 as String
        stepThreeLabel.text = step3 as String
        
        makeButton()
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "mySegue" {
            let secondViewController: AddNewGoalViewController = segue.destinationViewController as! AddNewGoalViewController
            secondViewController.delegate = self
        }
    }

    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        // Create a new fetch request using the LogItem entity
        let fetchRequest = NSFetchRequest(entityName: "Goal")
        
        // Execute the fetch request, and cast the results to an array of LogItem objects
        if let fetchResults = try? managedObjectContext.executeFetchRequest(fetchRequest) as? [Goal] {
            
            fetchResults 
        }
    }
    
    

    
    
}
