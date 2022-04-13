//
//  RecipeListViewController.swift
//  Sunnysideup Test
//
//  Created by Nurul Srianda Putri on 11/04/22.
//

import UIKit

class RecipeListViewController: ViewController {
    
    var weeklyRecipes: [OneDayMenu] = [
        OneDayMenu(dayNumber: 1,
                   dayMenuList: [
                    Menu(menuTitle: "Tempe Mendol", menuCookTime: "20 Mins", menuCalorie: "100 kcal", menuImageName: "tempe_mendol", menuDescription: "Deskripsi tempe mendol apa yaaa"),
                    Menu(menuTitle: "Salted Egg Tempe", menuCookTime: "30 Mins", menuCalorie: "150 kcal", menuImageName: "tempe_salted_egg", menuDescription: "Wow salted egg tempe, enak sekali!!"),
                    Menu(menuTitle: "Resep abc", menuCookTime: "30 Mins", menuCalorie: "150 kcal", menuImageName: "tempe_salted_egg", menuDescription: "tempe dengan kecap ABC ulala")
                ]),
        OneDayMenu(dayNumber: 2,
                   dayMenuList: [
                    Menu(menuTitle: "spongebob", menuCookTime: "20 Mins", menuCalorie: "100 kcal", menuImageName: "spongebob", menuDescription: "spongebob tidak untuk dimakan :)"),
                    Menu(menuTitle: "patrick", menuCookTime: "30 Mins", menuCalorie: "123 kcal", menuImageName: "patrick", menuDescription: "patrick star berbentuk bintang, dengan saus mexico"),
                    Menu(menuTitle: "squidward", menuCookTime: "10 Mins", menuCalorie: "111 kcal", menuImageName: "squidward", menuDescription: "digoreng dan diberikan bumbu khas bikini bottom")
                ]),
        OneDayMenu(dayNumber: 3,
                   dayMenuList: [
                    Menu(menuTitle: "Tempe Mendol", menuCookTime: "20 Mins", menuCalorie: "100 kcal", menuImageName: "tempe_mendol", menuDescription: "Deskripsi tempe mendol apa yaaa"),
                    Menu(menuTitle: "Salted Egg Tempe", menuCookTime: "30 Mins", menuCalorie: "150 kcal", menuImageName: "tempe_salted_egg", menuDescription: "Wow salted egg tempe, enak sekali!!"),
                    Menu(menuTitle: "Resep abc", menuCookTime: "30 Mins", menuCalorie: "150 kcal", menuImageName: "tempe_salted_egg", menuDescription: "tempe dengan kecap ABC ulala")
                ]),
        OneDayMenu(dayNumber: 4,
                   dayMenuList: [
                    Menu(menuTitle: "spongebob", menuCookTime: "20 Mins", menuCalorie: "100 kcal", menuImageName: "spongebob", menuDescription: "spongebob tidak untuk dimakan :)"),
                    Menu(menuTitle: "patrick", menuCookTime: "30 Mins", menuCalorie: "123 kcal", menuImageName: "patrick", menuDescription: "patrick star berbentuk bintang, dengan saus mexico"),
                    Menu(menuTitle: "squidward", menuCookTime: "10 Mins", menuCalorie: "111 kcal", menuImageName: "squidward", menuDescription: "digoreng dan diberikan bumbu khas bikini bottom")
                ])
    ]

    
    
    
    @IBOutlet weak var AllRecipeTableView: UITableView! {
        didSet {
            AllRecipeTableView.rowHeight = 190
        }
    }
    
    var recipeName = [String]()
    var cookTime = [Int]()
    var calories = [Int]()
    var imgString = [String]()
    var recipeDesc = [String]()
    var recipeId = [Int]()
    var weeklyRecipe : [WeeklyRecipe] = []
    var cookTimeRange = 0
    
    var eatingFreq = 0
    var tableRow = 0
    var count = 0
    var countDay = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cookTimeRangeMin = cookTimeRange / 100
        let cookTimeRangeMax = cookTimeRange % 100
        for i in 0 ..< recipeData.recipeArray.count {
            if recipeData.recipeArray[i].cookTime >= cookTimeRangeMin && recipeData.recipeArray[i].cookTime <= cookTimeRangeMax{
                recipeName.append(recipeData.recipeArray[i].recipeName)
                cookTime.append(recipeData.recipeArray[i].cookTime)
                calories.append(recipeData.recipeArray[i].calories)
                imgString.append(recipeData.recipeArray[i].imgString)
                recipeDesc.append(recipeData.recipeArray[i].recipeDesc)
                recipeId.append(recipeData.recipeArray[i].recipeId)
                if i == 0 {
                    for j in 0 ..< 7{
                        for k in 0 ..< eatingFreq {
                            recipeData.setWeeklyRecipe(dayNumber: count + 1, recipeId: recipeData.recipeArray[Int.random(in: i ..< recipeData.recipeArray.count)].recipeId)
                            
                        }
                        count += 1
                        
                        if count >= 7 {
                            count = 0
                        }
                        
                    }
                }
                
            }
            
        }
        print(recipeId)

        print(recipeData.weeklyRecipeArray)

        AllRecipeTableView.dataSource = self
        AllRecipeTableView.separatorStyle = .none
        AllRecipeTableView.showsVerticalScrollIndicator = false

        // Do any additional setup after loading the view.
    }
    

    @IBAction func nextBtnPressed(_ sender: Any) {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "IngredientListView") as! IngredientListViewController
        
        controller.modalPresentationStyle = .fullScreen
        
        controller.modalTransitionStyle = .crossDissolve
        
                
        self.present(controller, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension RecipeListViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return weeklyRecipes.count
//        return 7
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eatingFreq
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = AllRecipeTableView.dequeueReusableCell(withIdentifier: "RecipeCell") as! RecipeListTableViewCell
        
//        let recipe = weeklyRecipes[indexPath.section].dayMenuList![indexPath.row]

//        cell.RecipeNameLabel.text = recipe.menuTitle
        cell.RecipeNameLabel.text = recipeName[tableRow]
        cell.RecipeTimeCalorieLabel.text = "\(cookTime[tableRow]) Mins | \(calories[tableRow]) Kcal"
        cell.RecipeDescriptionLabel.text = recipeDesc[tableRow]
        cell.RecipeIdLabel.text = String(recipeId[tableRow])
//        cell.RecipeImageView.image = UIImage(named: recipe.menuImageName!)
        cell.RecipeImageView.image = UIImage(named: imgString[tableRow])
        cell.RecipeDetailsButtonTapped = {
            let controller = self.storyboard?.instantiateViewController(withIdentifier: "RecipePageView") as! RecipePageViewController
            controller.modalPresentationStyle = .fullScreen
            controller.modalTransitionStyle = .crossDissolve
            controller.index = cell.RecipeIdLabel.text!
            self.present(controller, animated: true)
        }
        tableRow += 1
        if tableRow >= recipeName.count {
            tableRow = 0
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "Day \(String(describing: weeklyRecipes[section].dayNumber!))"
        return "Day \(countDay)"

    }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        let view = UIView(frame: <#T##CGRect#>(x:0, y:0, width: tableView.frame.height, height: 30))
//
//        return view
//    }
    
}
