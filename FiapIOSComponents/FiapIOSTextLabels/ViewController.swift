//
//  ViewController.swift
//  FiapIOSTextLabels
//
//  Created by Usuário Convidado on 28/08/17.
//  Copyright © 2017 Usuário Convidado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var texFieldNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        //Tira o foco deste campo quando a tela é tocada
        //texFieldNumber.resignFirstResponder()
        
        //tira o foco de todas as views
        view.endEditing(true)
    }
}

