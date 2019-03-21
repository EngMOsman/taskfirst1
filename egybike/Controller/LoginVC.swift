//
//  LoginVC.swift
//  egybike
//
//  Created by osman on 2/10/19.
//  Copyright © 2019 osman. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class LoginVC: UIViewController , UITextFieldDelegate{
    
    
    @IBOutlet weak var forget: UILabel!
    @IBOutlet weak var PhoneTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    
    @IBAction func logIN(_ sender: Any) {
        
        guard let phone = PhoneTF.text, !phone.isEmpty else { return }
        guard let password = passwordTF.text, !password.isEmpty else { return }
        
        API.login(phone: phone, password: password) { (error: Error?, success: Bool) in
            if success {
                // say welcome to user
            } else {
                // say sorry to user and try again
            }
        }
        
        
    }
    
    
    
    @IBAction func signUP(_ sender: Any) {
    }
    
    
    
    
    
    
    
    // لحل مشاكل الكيبورد
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
}
