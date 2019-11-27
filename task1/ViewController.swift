//
//  ViewController.swift
//  task1
//
//  Created by Admin on 23.11.2019.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var TitleLabel:UILabel!
    @IBOutlet weak var LoginTextField:UITextField!
    @IBOutlet weak var PasswordTextField:UITextField!
    @IBOutlet weak var LoginButton: Button!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LoginButton.addTarget(self, action: #selector(login(sender:)), for: .touchUpInside)
    }

    @IBAction func login(sender: Button){
        print("Login: \(String(describing: LoginTextField.text))  Password: \(String(describing: PasswordTextField.text))")
    }
    @IBAction func endEditting(sender: UITextField){
        if LoginTextField == sender {
            print("Login: \(String(describing: sender.text))")
            PasswordTextField.becomeFirstResponder()
        }
        else {
        print("Password: \(String(describing: sender.text))")
            sender.resignFirstResponder()
        }
    }
}

