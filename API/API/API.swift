//
//  API.swift
//  egybike
//
//  Created by Mohamed on 3/19/19.
//  Copyright © 2019 osman. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class API: NSObject {
    // LOGIN
    class func login(phone: String, password: String, completion: @escaping (_ error: Error?, _ success: Bool)->Void) {
        let url = URLs.login
        
        let parameters = [
            "phone": phone,
            "password": password,
            
            ]
        
        Alamofire.request(url, method: .post, parameters: parameters, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .responseJSON { response in
                
                switch response.result
                {
                case .failure(let error):
                    completion(error, false)
                    print(error)
                    
                case .success(let value):
                    let json = JSON(value)
                    
                    if let api_token = json["user"]["api_token"].string {
                        print("api_token: \(api_token)")
                        
                        // save api token to UserDefaults
                        
                        
                        completion(nil, true)
                    }
                }
                
        }
    }
    
    
    
    // SIGN UP
    class func register(name: String, phone: String, address: String, birthday: String, general: String, password: String, completion: @escaping (_ error: Error?, _ success: Bool)->Void) {
        let url = URLs.register
        
        let parameters = [
            "name": name,
            "phone": phone,
            "address": address,
            "birthday": birthday,
            "general": general,
            "password": password,
            
            ]
        
        Alamofire.request(url, method: .post, parameters: parameters, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .responseJSON { response in
                
                switch response.result
                {
                case .failure(let error):
                    completion(error, false)
                    print(error)
                    
                case .success(let value):
                    let json = JSON(value)
                    
                    if let api_token = json["user"]["api_token"].string {
                        print("api_token: \(api_token)")
                        
                        // save api token to UserDefaults
                        
                        
                        completion(nil, true)
                    }
                }
                
        }
    }
    
}
