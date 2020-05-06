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
    
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initView()
    }
    
    private func initView(){
        
        if !isFirstEntry() {
            confirmPasswordTextField.isHidden = true
            statusLabel.text = "Autorisation"
            
        }else {
            statusLabel.text = "Registration"
        }
    }

    private func isFirstEntry() -> Bool{
        return !UserDefaultsUtil.getEntryStatus()
    }
    
    private func checkFieldsIsEmpty() -> Bool {
            
        if loginTextField.text == "" {
            self.showToast(message: "Введите логин")
            return false
        }
        
        if passwordTextField.text == "" {
            self.showToast(message: "Введите пароль")
            return false
        }

        if passwordTextField.text!.count < PASSWORD_SIZE  {
            self.showToast(message: "Пароль должен быть не менее 6 символов")
            return false
        }
        
        if confirmPasswordTextField.text == "" {
            self.showToast(message: "Подтвердите пароль")
            return false
        }
        
        if confirmPasswordTextField.text != passwordTextField.text {
            self.showToast(message: "Пароли не совпадают")
            return false
        }
        
        return true
    }
        
//        private func checkUserIdentification(){
//
//            if loginTextField.text != "" || passwordTextField.text != "" {
//
//            }else {
//                self.showToast(message: "Введите логин и пароль")
//            }
//
//        }
        
        private func showAlertDialog(title: String, message: String){
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in

            }))
    //        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
            self.present(alert, animated: true)
        }
        
    @IBAction func confirmButton(_ sender: UIButton) {

        print(checkFieldsIsEmpty())
        
    }
}
