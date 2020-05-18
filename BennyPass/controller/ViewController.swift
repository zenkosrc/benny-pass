//
//  ViewController.swift
//  BennyPass
//
//  Created by Camel on 23.04.2020.
//  Copyright © 2020 Camel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func addBarButtonItem(_ sender: Any) {
        print("ADD")
        
        showAlertDialog(title: "Test", message: "Хуест")
        
//        NSLog("AZE", DataBaseManager.getInstance().getProfileFromDB()?.count ?? 0)
        
//        DataBaseManager.getInstance().saveProfileToDB(profile: ProfileDTO())
        
//        print(DataBaseManager.getInstance().getProfileFromDB()?.count)
        
        
        
        print("\(DataBaseManager.getInstance().getProfileFromDB())")
        
    }
    
    
    private func showAlertDialog(title: String, message: String){
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            
            let name = alert.textFields![0] as UITextField
            let login = alert.textFields![1] as UITextField
            let password = alert.textFields![2] as UITextField
            
            let userProfile = ProfileDTO()
            userProfile.name = name.text!
            userProfile.login = login.text!
            userProfile.password = password.text!
            DataBaseManager.getInstance().saveProfileToDB(profile: userProfile)

        }))
//        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
        
        alert.addTextField { (nameTextField) in
            nameTextField.placeholder = "Profile Name"
        }
        
        alert.addTextField { (loginTextField) in
            loginTextField.placeholder = "Login"
        }
        
        alert.addTextField { (passwordTextField) in
            passwordTextField.placeholder = "Password"
        }
        
        self.present(alert, animated: true)
    }
}

