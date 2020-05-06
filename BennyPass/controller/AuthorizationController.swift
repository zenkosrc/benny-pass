//
//  AuthorizationController.swift
//  BennyPass
//
//  Created by Camel on 29.04.2020.
//  Copyright © 2020 Camel. All rights reserved.
//

import UIKit

class AuthorizationController: UIViewController {

    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func confirmButton(_ sender: UIButton) {

    }
    
    private func showAlertDialog(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in

        }))
//        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
        self.present(alert, animated: true)
    }
    
}
