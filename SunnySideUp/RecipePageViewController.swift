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
    
    var index = ""
    var ingredientNameArr = [String]()
    var ingredientNameFilteredArr = [String]()
    var instructionArr = [String]()
    var instructionFilteredArr = [String]()
    var id = [Int]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0 ..< recipeData.weeklyRecipeArray.count {
            id.append(recipeData.weeklyRecipeArray[i].recipeId)
        }
        
        for i in 0 ..< id.count {
            ingredientNameArr.append(recipeData.recipeArray[Int(index)! - 1].ingredient![0].title)
            for j in 0 ..< recipeData.recipeArray[Int(index)! - 1].ingredient!.count {
                ingredientNameArr.append(recipeData.recipeArray[Int(index)! - 1].ingredient![j].title)
            }
        }
        for i in 0 ..< id.count {
            instructionArr.append(recipeData.recipeArray[Int(index)! - 1].instruction![0].stepDesc)
            for j in 0 ..< recipeData.recipeArray[Int(index)! - 1].instruction!.count {
                instructionArr.append(recipeData.recipeArray[Int(index)! - 1].instruction![j].stepDesc)
            }
        }
        instructionFilteredArr = unique(source: instructionArr)
        instructionsLabel.text = "\(recipeData.recipeArray[Int(index)! - 1].instruction![0].stepOrder). \(instructionFilteredArr[0])\n"
        for i in 1 ..< instructionFilteredArr.count {
            instructionsLabel.text! += "\n\(recipeData.recipeArray[Int(index)! - 1].instruction![i].stepOrder). \(instructionFilteredArr[i])\n"
        }
        
        ingredientNameFilteredArr = unique(source: ingredientNameArr)
        ingredientsLabel.text = ingredientNameFilteredArr[0]
        for i in 1 ..< ingredientNameFilteredArr.count {
            ingredientsLabel.text! += "\n\(ingredientNameFilteredArr[i])"
        }
        recipeBriefView.layer.cornerRadius = 8
        mealImage.layer.cornerRadius = 8
//        mealImage.image = #imageLiteral(resourceName: "tempe-orek")
        mealImage.image = UIImage(named: recipeData.recipeArray[Int(index)! - 1].imgString)
        cookTimeLabel.text = "\(recipeData.recipeArray[Int(index)! - 1].cookTime) Mins"
        caloriesLabel.text = "\(recipeData.recipeArray[Int(index)! - 1].calories) kcal"
        ingredientsLabel.numberOfLines = 0

        instructionsLabel.numberOfLines = 0
//        instructionsLabel.text = "1. Saute garlic, galangal, and bay leaf until the aroma comes out.\n2. Add the tempeh and add sweet soy sauce, salt and sugar.\n3. Add water then stir until the spices absorb and dry."
        recipeTitleLabel.text = recipeData.recipeArray[Int(index)! - 1].recipeName
    }

    func unique<S : Sequence, T : Hashable>(source: S) -> [T] where S.Iterator.Element == T {
        var buffer = [T]()
        var added = Set<T>()
        for elem in source {
            if !added.contains(elem) {
                buffer.append(elem)
                added.insert(elem)
            }
        }
        return buffer
    }

}
