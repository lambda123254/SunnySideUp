//
//  PreparationViewController.swift
//  Mc1
//
//  Created by Michelle Pricilla on 08/04/22.
//
    
import UIKit

struct Meal {
    let mealTitle: String
    let mealPrep: String
}

struct Prep {
    let PrepId: Int
    let prepTitle: String
    var meal: [Meal]
}

class PreparationViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var guideLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func didTaButton(_ sender: Any) {
        showAlert()
    }
    func showAlert()
    {
        let alert = UIAlertController(title: "Are you sure to continue?", message: "Please make sure all the ingredients are well prepared.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Back", style: .cancel, handler: { (action: UIAlertAction!) in
//            insert logic here
      }))
        alert.addAction(UIAlertAction(title: "Next", style: .default, handler: { (action: UIAlertAction!) in
//            insert logic here
            let controller =
            self.storyboard?.instantiateViewController(withIdentifier: "MilestoneView") as! MilestoneViewController
            controller.modalPresentationStyle = .fullScreen
            controller.modalTransitionStyle = .crossDissolve
            self.present(controller, animated: true)

      }))
        self.present(alert, animated: true, completion: nil)
    }
    
    var data: [Prep] = [
        Prep(PrepId: 1, prepTitle: "Chicken Breast", meal: [Meal(mealTitle: "Chicken Fried Rice", mealPrep: "Cut into small pieces"), Meal(mealTitle: "Chicken One Pan Cheesy Chicken Broccoli", mealPrep: "slice thinly")]),
        
        Prep(PrepId: 2, prepTitle: "Broccoli", meal: [Meal(mealTitle: "One Pan Cheesy Chicken Broccoli", mealPrep: "Cut into small parts")]),
        
        Prep(PrepId: 3, prepTitle: "Onion", meal: [Meal(mealTitle: "One Pan Cheesy Chicken Broccoli", mealPrep: "Cut into dices")])
    ]
    
    var ingredient: [String] = []
    var checkListArr: [Bool] = []
    var checklist = false
    var weeklyrecipeID: [Int] = []
    var weeklyingredientID: [Int] = []
    var weeklyingredientIDFiltered: [Int] = []

    var weeklyAmount: [Double] = []
    var count = 0
    var ingredientFilter: [String] = []
    var unitArr: [String] = ["gram", "mL", "tbsp", "tsp", "cup", "clove"]
    var prefixArr: [String] = []
    var ingredientName: [String] = []
    var ingredientNameFiltered: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "Preparation"
        guideLabel.text = "Now, it is time to prepare the ingredients before cooking."
        tableView.delegate = self
        tableView.dataSource = self
        
        for i in 0...(recipeData.weeklyRecipeArray.count)-1 {
            weeklyrecipeID.append(recipeData.weeklyRecipeArray[i].recipeId)
        }
        
        for i in 0...(weeklyrecipeID.count)-1 {
            for j in 0...(recipeData.recipeArray[weeklyrecipeID[i] - 1].ingredient!.count-1) {
                weeklyingredientID.append(recipeData.recipeArray[weeklyrecipeID[i] - 1].ingredient![j].ingredientId)
                weeklyAmount.append(recipeData.recipeArray[weeklyrecipeID[i] - 1].ingredient![j].amount)
            }
        }
        
        for i in 0...(weeklyingredientID.count-1){
            for j in 0...(recipeData.ingredientArray.count-1){
                if weeklyingredientID[i] == recipeData.ingredientArray[j].ingredientId {
                    print(recipeData.ingredientArray[j].title)
                    ingredient.append(recipeData.ingredientArray[j].title)
                }
            }
        }
        for i in 0...(weeklyrecipeID.count-1){
            for j in 0...(recipeData.recipeArray[weeklyrecipeID[i] - 1].ingredient!.count-1) {
                ingredientName.append(recipeData.recipeArray[weeklyrecipeID[i] - 1].ingredient![j].title)
            }
        }
        ingredientFilter = unique(source: ingredient)
        weeklyingredientIDFiltered = unique(source: weeklyingredientID)
        print(recipeData.recipeArray.contains{$0.recipeId == 1})
        print(weeklyrecipeID.count)
        print(weeklyrecipeID)
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

extension PreparationViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let controller = storyboard?.instantiateViewController(withIdentifier: "PreparationDetail") as! PreparationDetailViewController
        controller.modalPresentationStyle = .fullScreen
        controller.modalTransitionStyle = .crossDissolve
        
        controller.prepTitle = ingredientFilter[indexPath.row]
    
        for i in 0...(weeklyrecipeID.count)-1 {
            if recipeData.recipeArray.contains(where: {$0.recipeId == weeklyrecipeID[i]}){
                controller.meal.append(recipeData.recipeArray[weeklyrecipeID[i] - 1].recipeName)
                for j in 0 ..< recipeData.recipeArray[weeklyrecipeID[i] - 1].preperation!.count{
                    controller.prep.append(recipeData.recipeArray[weeklyrecipeID[i] - 1].preperation![j].prepTitle)
                }
            }
//            controller.prep.append(data[indexPath.row].meal[i].mealPrep)
        }

        present(controller, animated: true)

    }
}

extension PreparationViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ingredientFilter.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = ingredientFilter[indexPath.row]
        return cell
    }
}




