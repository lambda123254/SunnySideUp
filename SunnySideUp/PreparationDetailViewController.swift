//
//  PreparationDetailViewController.swift
//  Mc1
//
//  Created by Michelle Pricilla on 09/04/22.
//

import UIKit

class PreparationDetailViewController: UIViewController {
    @IBOutlet weak var ingredientPrepTitleLabel: UILabel!
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var prepLabel: UILabel!
    @IBAction func backButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
            dismiss(animated: true, completion: nil)
    }
    
    var prepTitle: String = ""
    var meal: String = ""
    var prep: String = ""
    
    @IBOutlet weak var stackView: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        ingredientPrepTitleLabel.text = prepTitle
        mealNameLabel.text = meal
        prepLabel.text = prep
        
       
        
        
        

    }
}


