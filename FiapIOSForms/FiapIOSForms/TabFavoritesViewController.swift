//
//  TabFavoritesViewController.swift
//  FiapIOSForms
//
//  Created by Usuário Convidado on 23/08/17.
//  Copyright © 2017 Usuário Convidado. All rights reserved.
//

import UIKit

class TabFavoritesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func showNewScreen(_ sender: UIButton) {
        let newScreen = NewScreenViewController(nibName: "NewScreenViewController", bundle: nil)
        
        //present(newScreen, animated: true, completion: nil)
        navigationController?.pushViewController(newScreen, animated: true)
    }

}
