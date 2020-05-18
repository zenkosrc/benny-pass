//
//  DataBaseManager.swift
//  BennyPass
//
//  Created by Camel on 18.05.2020.
//  Copyright © 2020 Camel. All rights reserved.
//

import UIKit

class DataBaseManager {
    
    private static var uniqueInstance: DataBaseManager?
    
    private init() {}

    static func getInstance() -> DataBaseManager {
        if uniqueInstance == nil {
            uniqueInstance = DataBaseManager()
        }
        return uniqueInstance!
    }
    
    
}
