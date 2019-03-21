//
//  Config.swift
//  egybike
//
//  Created by Mohamed on 3/19/19.
//  Copyright © 2019 osman. All rights reserved.
//

import Foundation

struct URLs {
    static let main = "http://egybike.pythonanywhere.com/data/"
    
    /// POST {email, password}
    static let login = main + "login"
    
    /// POST {name, phone, address, birthday, gender,password, password_confirmation}
    static let register = main + "register"
    
}
