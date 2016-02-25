//
//  Goal+CoreDataProperties.swift
//  
//
//  Created by Caponong, Lauren on 2/24/16.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Goal {

    @NSManaged var goalName: String?
    @NSManaged var step3: String?
    @NSManaged var step2: String?
    @NSManaged var step1: String?

}
