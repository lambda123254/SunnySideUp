//
//  Filter2ViewController.swift
//  Suniside-Jo
//
//  Created by Joana Handoyo on 08/04/22.
//

import UIKit

class Filter2ViewController: UIViewController {
    var eatingFreq = 0
    var cookTimeRange = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        print(eatingFreq)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func firstOptBtnPressed(_ sender: Any) {
        cookTimeRange = 1030
    }
    @IBAction func secondOptBtnPressed(_ sender: Any) {
        cookTimeRange = 3150
    }
    @IBAction func thirdOptBtnPressed(_ sender: Any) {
        cookTimeRange = 5060
    }
    @IBAction func nextBtnPressed(_ sender: Any) {
        showAlert()
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true)
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Are you sure to continue?", message: "If you are already sure, please continue.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Edit", style: .cancel, handler: { action in
            print("edit")
        }))
        alert.addAction(UIAlertAction(title: "Continue", style: .default, handler: { action in print("continue")
            let controller = self.storyboard?.instantiateViewController(withIdentifier: "RecipeListView") as! RecipeListViewController
            
            controller.modalPresentationStyle = .fullScreen
            
            controller.modalTransitionStyle = .crossDissolve
            controller.cookTimeRange = self.cookTimeRange
            controller.eatingFreq = self.eatingFreq
                    
            self.present(controller, animated: true)
        }))
        
        present(alert, animated: true)
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
