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

    dynamic var name = ""
    dynamic var login = ""
    dynamic var password = ""
    dynamic var descr = ""
    dynamic var icon = ""
    dynamic var created = NSDate()
}
