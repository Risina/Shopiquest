//
//  SQDBHelper.swift
//  Shopiquest
//
//  Created by Risina Perera on 4/21/16.
//  Copyright © 2016 Risina Perera. All rights reserved.
//

import UIKit
import CoreData

class SQDBHelper: NSObject {
    
    let managedObjectContext:NSManagedObjectContext
    
    override init() {
        let appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        self.managedObjectContext = appDelegate.managedObjectContext
    }
    
//    func saveEntity(<#parameters#>) -> <#return type#> {
//        <#function body#>
//    }
    
    
}
