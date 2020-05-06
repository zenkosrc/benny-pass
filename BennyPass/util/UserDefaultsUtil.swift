//
//  UserDefaultsUtil.swift
//  BennyPass
//
//  Created by Camel on 30.04.2020.
//  Copyright © 2020 Camel. All rights reserved.
//

import UIKit

class UserDefaultsUtil: NSObject {
    
    private static let LOGIN_USER_DEFAULTS: String      = "login_user_defaults"
    private static let PASSWORD_USER_DEFAULTS: String   = "password_user_defaults"
    
    static func getUserLogin() -> String {
        return getStringFromUserDefaults(defaultValue: "", key: LOGIN_USER_DEFAULTS)
    }
    
    static func getUserPassword() -> String {
        return getStringFromUserDefaults(defaultValue: "", key: PASSWORD_USER_DEFAULTS)
    }

    func setToUserDefaults(value: String, key: String){
        UserDefaults.standard.set(value, forKey: key)
    }
    
    static func getStringFromUserDefaults(defaultValue: String, key: String) -> String {
        return UserDefaults.standard.string(forKey: key) ?? defaultValue
    }
}
