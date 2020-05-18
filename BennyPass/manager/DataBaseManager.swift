//
//  DataBaseManager.swift
//  BennyPass
//
//  Created by Camel on 18.05.2020.
//  Copyright © 2020 Camel. All rights reserved.
//

import UIKit
import RealmSwift

class DataBaseManager {
    
    private static var uniqueInstance: DataBaseManager?
    let uiRealm = try! Realm(configuration: .defaultConfiguration)
    
    private init() {}

    static func getInstance() -> DataBaseManager {
        if uniqueInstance == nil {
            uniqueInstance = DataBaseManager()
        }
        return uniqueInstance!
    }
    
    func saveProfileToDB(profile: ProfileDTO) {
        try! uiRealm.write {
            uiRealm.add(profile)
            print("\(profile)")
        }
    }
    
    func getProfileFromDB() -> [ProfileDTO] {
        return Array(uiRealm.objects(ProfileDTO.self))
    }
    
    func deleteProfileFromDB(profile: ProfileDTO){
        try! uiRealm.write {
            uiRealm.delete(profile)
        }
    }
}
