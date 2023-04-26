//
//  Team .swift
//  collectionViewCore
//
//  Created by Mohan K on 20/03/23.
//

import Foundation
import CoreData
import UIKit

@objc(Team)
public class Team: NSManagedObject {


    @nonobjc public class func fetchRequest() -> NSFetchRequest<Team> {
        return NSFetchRequest<Team>(entityName: "Team")
    }

    @NSManaged public var name: String?
    @NSManaged public var id: Int16
    @NSManaged public var location: String?
    @NSManaged public var shift: String?

}

extension Team : Identifiable {

}
