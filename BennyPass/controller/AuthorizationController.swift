//
//  AuthorizationController.swift
//  BennyPass
//
//  Created by Camel on 29.04.2020.
//  Copyright © 2020 Camel. All rights reserved.
//

import UIKit

class AuthorizationController: UIViewController {
    
    private let PASSWORD_SIZE: Int = 6
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    private func isFirstEntry() -> Bool{
        return !UserDefaultsUtil.getEntryStatus()
    }
    
    private func checkFieldsIsEmpty(){
            
            if loginTextField.text == "" {
                self.showToast(message: "Введите логин")
                return
            }
            
            if passwordTextField.text == "" {
                self.showToast(message: "Введите пароль")
                return
            }

            if passwordTextField.text!.count < PASSWORD_SIZE  {
                self.showToast(message: "Пароль должен быть не менее 6 символов")
                return
            }
        }
        
        private func checkUserIdentification(){
            
            if loginTextField.text != "" || passwordTextField.text != "" {

            }else {
                self.showToast(message: "Введите логин и пароль")
            }

        }
        
        private func showAlertDialog(title: String, message: String){
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in

            }))
    //        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
            self.present(alert, animated: true)
        }
        
    @IBAction func confirmButton(_ sender: UIButton) {
        print(isFirstEntry())
    }
}
