//
//  RecipePageViewController.swift
//  Mc1
//
//  Created by Michelle Pricilla on 08/04/22.
//

import UIKit

class RecipePageViewController: UIViewController {
    @IBOutlet weak var mealImage: UIImageView!
    @IBOutlet weak var cookTimeLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var ingredientsLabel: UILabel!
    @IBOutlet weak var instructionsLabel: UILabel!
    @IBOutlet weak var recipeTitleLabel: UILabel!
    @IBOutlet weak var recipeBriefView: UIView!
    @IBOutlet weak var briefView: UIView!
    @IBAction func backButton(_ sender: Any) {
        
        navigationController?.popViewController(animated: true)
            dismiss(animated: true, completion: nil)
    }
    
    

    struct Recipe {
        var recipeName: String
        var recipeImage: String
        var recipeCookTime: Int
        var recipeCalories: Int
        var ingredients: [String]
        var instructions: [String]
    }
    
    let RecipeMeal1 = Recipe(recipeName: "Orek Tempe",recipeImage:"tempe-orek", recipeCookTime: 20, recipeCalories: 200, ingredients: ["300 gram tempeh", "3 cloves garlic", "200 ml water", "2 cm galangal root", "3 bay leaf", "2 tbsp sweet soy sauce", "½ tsp salt","½ tsp sugar"], instructions: ["Saute garlic, galangal, and bay leaf until the aroma comes out.", "Add the tempeh and add sweet soy sauce, salt and sugar.", "Add water then stir until the spices absorb and dry."])
    
    var index = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        recipeBriefView.layer.cornerRadius = 8
        mealImage.layer.cornerRadius = 8
//        mealImage.image = #imageLiteral(resourceName: "tempe-orek")
        mealImage.image = UIImage(named: "tempe-orek")
        cookTimeLabel.text = "\(RecipeMeal1.recipeCookTime) Mins"
        caloriesLabel.text = "\(RecipeMeal1.recipeCalories) kcal"
        ingredientsLabel.numberOfLines = 0
        ingredientsLabel.text = "300 gram tempeh\n3 cloves garlic\n200 ml water\n2 cm galangal root\n3 bay leaf\n2 tbsp sweet soy sauce\n½ tsp salt\n½ tsp sugar"
        instructionsLabel.numberOfLines = 0
        instructionsLabel.text = "1. Saute garlic, galangal, and bay leaf until the aroma comes out.\n2. Add the tempeh and add sweet soy sauce, salt and sugar.\n3. Add water then stir until the spices absorb and dry."
        recipeTitleLabel.text = RecipeMeal1.recipeName
    }


}
