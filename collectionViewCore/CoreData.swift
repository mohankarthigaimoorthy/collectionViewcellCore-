//
//  CoreData.swift
//  collectionViewCore
//
//  Created by Mohan K on 20/03/23.
//

import Foundation

var teams: [String]?

func saveTeam(teams:[String]) {
    UserDefaults.standard.set(teams, forKey: "teams")

}

func fetchTeam() -> [String]? {
    if let team = UserDefaults.standard.array(forKey: "teams") as? [String] {
        return team
        
    }
    else {
        return nil
    }
}
