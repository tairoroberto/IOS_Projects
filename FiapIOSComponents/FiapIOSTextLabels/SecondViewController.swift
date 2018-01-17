//
//  SecondViewController.swift
//  FiapIOSTextLabels
//
//  Created by Usuário Convidado on 28/08/17.
//  Copyright © 2017 Usuário Convidado. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldSenha: UITextField!
    @IBOutlet weak var buttonLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == textFieldName {
            textFieldEmail.becomeFirstResponder()
        }
        
        if textField == textFieldEmail {
            textFieldSenha.becomeFirstResponder()
        }else {
            login(nil)
        }
        
       return true
    }
    
    @IBAction func login(_ sender: UIButton?) {
        print("LOGIN")
    }
    
}
