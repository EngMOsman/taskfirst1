//
//  SignUp.swift
//  egybike
//
//  Created by osman on 2/10/19.
//  Copyright © 2019 osman. All rights reserved.
//

import UIKit
import IQKeyboardManagerSwift
import Alamofire
import SwiftyJSON

class SignUp: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate{
    var gender = ["male" , "female"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return gender.count
    }
    var selectedgender = 0
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return gender[row]
        selectedgender = row
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedGender.text=gender[row]
    }
    
    
    @IBOutlet weak var selectedGender: UILabel!
    @IBOutlet weak var textConfirm: UITextField!
    @IBOutlet weak var textPassword: UITextField!
    @IBOutlet weak var textAddress: UITextField!
    @IBOutlet weak var textPhone: UITextField!
    @IBOutlet weak var textName: UITextField!
    @IBOutlet weak var pickerGender: UIPickerView!
    @IBOutlet weak var pickerDate: UIDatePicker!
    
    //start method
    
    // علشان اعمل رجيستيرشين واتصل بالسيرفر واحفظ الداتا بتاعت اليوز الجديد
    
    @IBAction func registerPressed(_ sender: Any) {
        
        
        guard let name = textName.text?.trimmed , !name.isEmpty else { return }
        guard let phone = textPhone.text?.trimmed , !phone.isEmpty else { return }
        guard let address = textAddress.text?.trimmed , !address.isEmpty else { return }
        guard let  general = selectedGender.text?.trimmed , !general.isEmpty else { return }
        guard let password = textPassword.text , !password.isEmpty else { return }
        guard let Confirm = textConfirm.text , !Confirm.isEmpty else { return }
        
        guard password == Confirm else { return }
        
        API.register(name: name, phone: phone, address: address, birthday: "pickerDate", general: general, password: password) { (error: Error?, success: Bool) in
            if success {
                print("Reigster succeed !! welcome to our small app :)")
            }
            
        }
        
    }
    
    
    @IBAction func backLOG(_ sender: Any) {
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    // لتصليح مشاكل الكيبورد
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
}

