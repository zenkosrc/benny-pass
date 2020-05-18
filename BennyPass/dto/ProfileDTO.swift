//
//  ProfileDTO.swift
//  BennyPass
//
//  Created by Camel on 18.05.2020.
//  Copyright © 2020 Camel. All rights reserved.
//

import Foundation
import RealmSwift

class ProfileDTO: Object {

    @objc dynamic var name = "test"
    @objc dynamic var login = ""
    @objc dynamic var password = ""
    @objc dynamic var descr = ""
    @objc dynamic var icon = ""
    @objc dynamic var created = NSDate()
}
