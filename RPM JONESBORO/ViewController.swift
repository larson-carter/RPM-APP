//
//  ViewController.swift
//  RPM JONESBORO
//
//  Created by Larson Carter on 8/9/18.
//  Copyright © 2018 Larson Carter. All rights reserved.
//

import UIKit
import Auth0

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func loginButtonAction(_ sender: Any) {
        
        Auth0
            .webAuth()
            .scope("openid profile")
            .audience("https://lcproductions.auth0.com/userinfo")
            .start {
                switch $0 {
                case .failure(let error):
                    // Handle the error
                    print("Error: \(error)")
                case .success(let credentials):
                    // Do something with credentials e.g.: save them.
                    // Auth0 will automatically dismiss the login page
                    print("Credentials: \(credentials)")
                    
                }
                
        }
        
    }
    
}

