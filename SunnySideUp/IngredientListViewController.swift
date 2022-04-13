//
//  IngredientListViewController.swift
//  Mc1
//
//  Created by Michelle Pricilla on 06/04/22.
//

import UIKit
class checkListItem {
    let title: String
    var isChecked: Bool = false

    init(title: String){
        self.title = title
    }
}

class IngredientListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var guideText: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBAction func nextButton(_ sender: Any) {
        let controller =
        storyboard?.instantiateViewController(withIdentifier: "PreparationView") as! PreparationViewController
        controller.modalPresentationStyle = .fullScreen
        controller.modalTransitionStyle = .crossDissolve
        present(controller, animated: true)
    }
    
    
    let items: [checkListItem] = [
        "1 Pound of Chicken Breast",
        "10mL of Teriyaki Sauce",
        "1 cup of Rice",
        "300 grams tempeh",
        "1 ons anchovy",
        "5 red chili pepper",
        "6 cloves garlic",
        "3 cloves shallot",
        "2 tbsp sago flour",
        "½ cup full cream milk",
        "1 sachet of fried tempeh seasoning",
        "3 salted egg yolk",
        "300 grams tempeh",
        "1 ons anchovy",
        "5 red chili pepper",
        "6 cloves garlic",
        "3 cloves shallot",
        "2 tbsp sago flour",
        "½ cup full cream milk",
        "1 sachet of fried tempeh seasoning"

    ].compactMap({
        checkListItem(title: $0)
    })

//    var id = [Int]()
    override func viewDidLoad() {
        super.viewDidLoad()
        var count = 0
        titleLabel.text = "Step 4"
        guideText.text = "Here are the ingredients you need to prepare for this week. Don't forget to check all the ingredients before starting the preparation!"
        tableView.delegate = self
        tableView.dataSource = self
//        for i in 0 ..< recipeData.weeklyRecipeArray.count {
//            id.append(recipeData.weeklyRecipeArray[i].recipeId)
//
////            if recipeData.weeklyRecipeArray[i].recipeId
//            for j in 0 ..< 2 {
//                print(recipeData.recipeArray[recipeData.weeklyRecipeArray[i].recipeId - 1].ingredient![j].title)
//            }
//            count += 1
//        }
//
    }
    
    //table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = item.title
        cell.accessoryType = item.isChecked ? .checkmark : .none
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let item = items[indexPath.row]
        item.isChecked = !item.isChecked
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
    //hide Nav Bar
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        navigationController?.setNavigationBarHidden(true, animated: animated)
//    }
//
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        navigationController?.setNavigationBarHidden(false, animated: animated)
//    }

}
