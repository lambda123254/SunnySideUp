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
            let controller = self.storyboard?.instantiateViewController(withIdentifier: "MilestoneView") as! MilestoneViewController
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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "Preparation"
        guideLabel.text = "Now, it is time to prepare the ingredients before cooking."
        tableView.delegate = self
        tableView.dataSource = self


    }
    
}

extension PreparationViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "PreparationDetailView") as! PreparationDetailViewController
        controller.modalPresentationStyle = .fullScreen
        controller.modalTransitionStyle = .crossDissolve

        controller.prepTitle = data[indexPath.row].prepTitle

        for i in 0...(data[indexPath.row].meal.count)-1 {
            controller.meal = data[indexPath.row].meal[i].mealTitle
            controller.prep = data[indexPath.row].meal[i].mealPrep
        }

        present(controller, animated: true)
        

    }
}

extension PreparationViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row].prepTitle
        return cell
    }
}



