//
//  Product+CoreDataProperties.swift
//  Shopiquest
//
//  Created by Risina Perera on 4/21/16.
//  Copyright © 2016 Risina Perera. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Product {

    @NSManaged var productDescription: String?
    @NSManaged var productId: NSNumber?
    @NSManaged var productImageUrl: String?
    @NSManaged var productName: String?
    @NSManaged var productPrice: NSDecimalNumber?
    @NSManaged var productVendor: String?
    @NSManaged var productTypeId: NSNumber?

}
