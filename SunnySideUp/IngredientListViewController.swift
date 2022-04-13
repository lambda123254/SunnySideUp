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
        
        for i in ingredientFilter {
            if ingredientFilter.contains("Garlic"){
                prefixArr.append("cloves")
            }
        }
    }
    
    //table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ingredientFilter.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var unit = ""
        if ingredientFilter[indexPath.row].contains("Water") {unit = "mL"}
        else if ingredientFilter[indexPath.row].contains("Tempeh Seasoning") {unit = "sachet"}
        else if ingredientFilter[indexPath.row].contains("Chicken Breast") {unit = "grams"}
        else if ingredientFilter[indexPath.row].contains("Tempeh") {unit = "grams"}
        else if ingredientFilter[indexPath.row].contains("White Onion") {unit = ""}
        else if ingredientFilter[indexPath.row].contains("Green Onion") {unit = "tbsp"}
        else if ingredientFilter[indexPath.row].contains("Vegetable Oil") {unit = "tbsp"}
        else if ingredientFilter[indexPath.row].contains("Soy Sauce") {unit = "tbsp"}
        else if ingredientFilter[indexPath.row].contains("Cooked Rice") {unit = "cups"}
        else if ingredientFilter[indexPath.row].contains("Sesame Oil") {unit = "tbsp"}

        else if ingredientFilter[indexPath.row].contains("Frozen Peas and Carrots") {unit = ""}
        else if ingredientFilter[indexPath.row].contains("Egg") {unit = ""}
        else if ingredientFilter[indexPath.row].contains("Garlic") {unit = "cloves"}
        else if ingredientFilter[indexPath.row].contains("Water") {unit = "ml"}
        else if ingredientFilter[indexPath.row].contains("Galangal Root") {unit = "cm"}

        else if ingredientFilter[indexPath.row].contains("Bay Leaf") {unit = ""}
        else if ingredientFilter[indexPath.row].contains("Sweet Soy Sauce") {unit = "tbsp"}
        else if ingredientFilter[indexPath.row].contains("Salt") {unit = "tsp"}
        else if ingredientFilter[indexPath.row].contains("Sugar") {unit = "tsp"}

        else if ingredientFilter[indexPath.row].contains("Pepper") {unit = ""}
        else if ingredientFilter[indexPath.row].contains("Chicken Broth") {unit = "ml"}
        else if ingredientFilter[indexPath.row].contains("Anchovy") {unit = "ons"}
        else if ingredientFilter[indexPath.row].contains("Chili Pepper") {unit = ""}

        else if ingredientFilter[indexPath.row].contains("Shallot") {unit = "cloves"}
        else if ingredientFilter[indexPath.row].contains("Teriyaki Sauce") {unit = "ml"}
        else if ingredientFilter[indexPath.row].contains("Lime Leaf") {unit = ""}
        else if ingredientFilter[indexPath.row].contains("Red Cayenne Pepper") {unit = ""}

        else if ingredientFilter[indexPath.row].contains("Aromatic Ginger") {unit = "cm"}
        else if ingredientFilter[indexPath.row].contains("Mushroom broth") {unit = "tsp"}
        else if ingredientFilter[indexPath.row].contains("Coriander") {unit = "tsp"}
        else if ingredientFilter[indexPath.row].contains("Onion") {unit = "tbsp"}

        else if ingredientFilter[indexPath.row].contains("Broccoli") {unit = "cups"}
        else if ingredientFilter[indexPath.row].contains("Cheddar") {unit = "cups"}
        else if ingredientFilter[indexPath.row].contains("Olive Oil") {unit = "tbsp"}
        else if ingredientFilter[indexPath.row].contains("Salted Egg Yolk") {unit = ""}
        else if ingredientFilter[indexPath.row].contains("Wheat Flour") {unit = "tbsp"}
        else if ingredientFilter[indexPath.row].contains("All Purpose Flour") {unit = ""}
        else if ingredientFilter[indexPath.row].contains("Sago Flour") {unit = "tbsp"}
        else if ingredientFilter[indexPath.row].contains("Full Cream Milk") {unit = "cup"}

        cell.textLabel?.text = "\(forTrailingZero(temp: weeklyAmount[indexPath.row])) \(unit) of \(ingredientFilter[indexPath.row])"
//        cell.textLabel?.text = "\(ingredientFilter[indexPath.row])"

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
    
    func forTrailingZero(temp: Double) -> String {
        var tempVar = String(format: "%g", temp)
        return tempVar
    }

}
