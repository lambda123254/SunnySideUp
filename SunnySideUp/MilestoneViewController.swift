//
//  MilestoneViewController.swift
//  Sunnysideup Test
//
//  Created by Nurul Srianda Putri on 11/04/22.
//

import UIKit

class MilestoneViewController: ViewController {
    
    var mealArray: [Menu] = [
        Menu(menuTitle: "Tempe Mendol", menuCookTime: "20 Mins", menuCalorie: "100 kcal", menuImageName: "tempe_mendol"),
        Menu(menuTitle: "Salted Egg Tempe", menuCookTime: "30 Mins", menuCalorie: "150 kcal", menuImageName: "tempe_salted_egg"),
        Menu(menuTitle: "Resep abc", menuCookTime: "30 Mins", menuCalorie: "150 kcal", menuImageName: "tempe_salted_egg")
    ]
    var menuArray: [Menu] = [
        Menu(menuTitle: "Tempe Mendol", menuCookTime: "20 Mins", menuCalorie: "100 kcal", menuImageName: "tempe_mendol"),
        Menu(menuTitle: "Salted Egg Tempe", menuCookTime: "30 Mins", menuCalorie: "150 kcal", menuImageName: "tempe_salted_egg"),
        Menu(menuTitle: "Resep abc", menuCookTime: "30 Mins", menuCalorie: "150 kcal", menuImageName: "tempe_salted_egg")
    ]
    
    @IBOutlet weak var MilestoneDay: UILabel!
    @IBOutlet weak var MilestoneDate: UILabel!
    @IBOutlet weak var MilestoneMealTableView: UITableView!
    
    var statusArray = [[false, false, false], [false, false, false]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MilestoneMealTableView.dataSource = self
        MilestoneDate.text = getDateLabel()
        MilestoneDay.text = getDay()
        
        MilestoneMealTableView.separatorStyle = .none
        MilestoneMealTableView.showsVerticalScrollIndicator = false
    }
    
    func getDay() -> String {
        return "Day 1"
    }
    
    func getDateLabel() -> String {
        var dateLabel = ""
        
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "EEEE"
        let dayString = dateFormatter.string(from: currentDate)
        dateLabel += "\(dayString), "
        
        dateFormatter.dateFormat = "dd"
        let dateString = dateFormatter.string(from: currentDate)
        dateLabel += "\(dateString) "
        
        dateFormatter.dateFormat = "LLLL"
        let monthString = dateFormatter.string(from: currentDate)
        dateLabel += "\(monthString) "
        
        dateFormatter.dateFormat = "yyyy"
        let yearString = dateFormatter.string(from: currentDate)
        dateLabel += "\(yearString)"
        
        return dateLabel
    }

}

extension MilestoneViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mealArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = MilestoneMealTableView.dequeueReusableCell(withIdentifier: "MilestoneMealRecipeCell") as! MilestoneMealTableViewCell
        let menu = menuArray[indexPath.row]
        
        cell.MilestoneMealNumber.text = "Meal \(indexPath.row + 1)"
        cell.MilestoneMealImageView.image = UIImage(named: menu.menuImageName!)
        cell.MilestoneMealLabel.text = menu.menuTitle
        cell.MilestoneMealCookTimeLabel.text = menu.menuCookTime
        cell.MilestoneMealCalorieLabel.text = menu.menuCalorie
        cell.MilestoneStartButtonTapped = {
            let controller = self.storyboard?.instantiateViewController(withIdentifier: "StepByStepView") as! StepByStepViewController
            controller.modalPresentationStyle = .fullScreen
            controller.modalTransitionStyle = .crossDissolve

            self.present(controller, animated: true)
            
//            // coba debugging
//            self.statusArray[0][indexPath.row] = true
//            print(self.statusArray)
//
//            // card become gray
//            cell.MilestoneStartButton.isEnabled = false
//            cell.MealContainerView.backgroundColor = UIColor(red: 227/255, green: 227/255, blue: 227/255, alpha: 100/100)
//            cell.MealClippingView.backgroundColor = UIColor(red: 227/255, green: 227/255, blue: 227/255, alpha: 100/100)
//            cell.MilestoneMealLabel.textColor = UIColor(red: 80/255, green: 80/255, blue: 82/255, alpha: 100/100)
//            cell.MilestoneMealCookTimeLabel.textColor = UIColor(red: 80/255, green: 80/255, blue: 82/255, alpha: 100/100)
//            cell.MilestoneMealCalorieLabel.textColor = UIColor(red: 80/255, green: 80/255, blue: 82/255, alpha: 100/100)
//            cell.MilestoneMealImageView.layer.opacity = 0.5
//            cell.MilestoneImageContainerView.layer.shadowOpacity = 0.2
//            cell.MealClippingView.layer.opacity = 0.8
//            cell.MilestoneStartButton.backgroundColor = UIColor(red: 80/255, green: 80/255, blue: 82/255, alpha: 20/100)
        }
        
        return cell
    }
    
}
