//
//  MovieRegisterViewController.swift
//  MoviesLib
//
//  Created by Usuário Convidado on 13/09/17.
//  Copyright © 2017 EricBrito. All rights reserved.
//

import UIKit

class MovieRegisterViewController: UIViewController {

    @IBOutlet weak var tfTitle: UITextField!
    @IBOutlet weak var lbCategories: UILabel!
    @IBOutlet weak var tfRating: UITextField!
    @IBOutlet weak var tfDuration: UITextField!
    @IBOutlet weak var tfSummary: UITextView!
    @IBOutlet weak var imgPoster: UIImageView!
    @IBOutlet weak var btnAddUpdate: UIButton!
    
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if movie != nil {
            tfTitle.text = movie.title
            tfRating.text = String(movie.rating)
            tfSummary.text = movie.summary
            tfDuration.text = movie.duration
            btnAddUpdate.setTitle("Atualizar", for: .normal)
        }
    }
    
    @IBAction func addUpdateMovie(_ sender: UIButton) {
        if movie == nil {
            movie = Movie(context: context)
        }
        
        movie.title = tfTitle.text
        movie.rating = Double(tfRating.text!)!
        movie.summary = tfSummary.text
        movie.duration = tfDuration.text
        
        do{
            try context.save()
        }catch {
            print(error.localizedDescription)
        }
        
        close(nil)
    }

    @IBAction func close(_ sender: UIButton?) {
        dismiss(animated: true, completion: nil)
    }
}
