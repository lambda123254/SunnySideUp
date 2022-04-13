//
//  PreparationDetailViewController.swift
//  Mc1
//
//  Created by Michelle Pricilla on 09/04/22.
//

import UIKit

class PreparationDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var prepTableView: UITableView!
    @IBOutlet weak var prepTitleLabel: UILabel!
    @IBAction func backButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
    }
    var isChecked = false
    var prepTitle: String = ""
    var meal: [String] = []
    var prep: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepTableView.delegate = self
        prepTableView.dataSource = self
        prepTitleLabel.text = prepTitle

    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meal.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let mealTitle = meal[indexPath.row]
        let mealPrep = prep[indexPath.row]
        let cell = prepTableView.dequeueReusableCell(withIdentifier: "PreparationDetailCell", for: indexPath) as! PreparationDetailTableViewCell
        cell.mealTitleLabel.text = mealTitle
        cell.mealPrepLabel.text = mealPrep
        
        cell.mealTitleLabel.numberOfLines = 0
        cell.mealPrepLabel.numberOfLines = 0
        if isChecked == true {
            cell.accessoryType = .checkmark
        }
        else {
            cell.accessoryType = .none
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        prepTableView.deselectRow(at: indexPath, animated: true)
        isChecked = true
        prepTableView.reloadRows(at: [indexPath], with: .automatic)
 
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}




