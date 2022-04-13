//
//  IngredientListViewController.swift
//  Mc1
//
//  Created by Michelle Pricilla on 06/04/22.
//

import UIKit
import Foundation

class IngredientListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var guideText: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func nextButton(_ sender: Any) {
        
        let controller =
        storyboard?.instantiateViewController(withIdentifier: "PreparationView") as! PreparationViewController
        controller.modalPresentationStyle = .fullScreen
        controller.modalTransitionStyle = .crossDissolve
        
        if checkListArr.contains(false) {
            print("error")
        }
        else {
        }
        present(controller, animated: true)

        
    }
    
    var ingredient: [String] = []
    var checkListArr: [Bool] = []
    var checklist = false
    var weeklyrecipeID: [Int] = []
    var weeklyingredientID: [Int] = []
    var weeklyAmount: [Double] = []
    var count = 0
    var ingredientFilter: [String] = []
    var unitArr: [String] = ["gram", "mL", "tbsp", "tsp", "cup", "clove"]
    var prefixArr: [String] = []
    var ingredientName: [String] = []
    var ingredientNameFiltered: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "Step 4"
        guideText.text = "Here are the ingredients you need to prepare for this week. Don't forget to check all the ingredients before starting the preparation!"
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
        
//        print(weeklyingredientID)
//        print(weeklyingredientID.count)
//        print(ingredient)
//        print(ingredient.count)
//        print(weeklyAmount)
        print(ingredient[0])
        print(ingredientName)
        
        for i in 0...(ingredient.count-1){
            checkListArr.append(false)
        }
        for i in 0...(ingredientName.count-1){
            if ingredientName[i].contains(ingredient[i]){
                ingredientNameFiltered.append(ingredientName[i])
            }
        }
        print(ingredientNameFiltered)
        ingredientFilter = unique(source: ingredient)
    }
    
    //table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ingredientFilter.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
//        cell.textLabel?.text = "\(Int(weeklyAmount[indexPath.row])) \(ingredientFilter[indexPath.row])"
        cell.textLabel?.text = "\(ingredientFilter[indexPath.row])"

//        if checklist == true {
//            cell.accessoryType = .checkmark
//            checklist = false
////            count += 1
//        }
//        else{
//            cell.accessoryType = .none
////            count -= 1
//        }
        if checkListArr[indexPath.row] == true {
            cell.accessoryType = .checkmark
            checkListArr[indexPath.row] = true
        }
        else {
            cell.accessoryType = .none
        }
        
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
//        if checklist == false {
//            checklist = true
//        }
//        else {
//            checklist = false
//        }
        
        if checkListArr[indexPath.row] == false {
            checkListArr[indexPath.row] = true
            tableView.reloadRows(at: [indexPath], with: .automatic)
        }
        else{
            checkListArr[indexPath.row] = false
            
        }
        
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
