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
    
    
    
    let managedObjectContext = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UITabBar.appearance().tintColor = UIColor.whiteColor()
        UITabBar.appearance().barTintColor = UIColor.blackColor()
        
        makeButton()
        setGoal()
        
        print(managedObjectContext)
        
        let newItem = NSEntityDescription.insertNewObjectForEntityForName("Goal", inManagedObjectContext: self.managedObjectContext) as! Goal
        
        newItem.goalName = "New Goal"
        newItem.step1 = "Step one goal"
        
        
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
