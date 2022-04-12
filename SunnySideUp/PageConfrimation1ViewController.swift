//
//  PageConfrimation1ViewController.swift
//  Suniside-Jo
//
//  Created by Joana Handoyo on 08/04/22.
//

import UIKit

class PageConfrimation1ViewController: UIViewController {

    var eatingFreq = 0
    var cookTime = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(eatingFreq) + \(cookTime)")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextBtnPressed() {
        showAlert()
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Are you sure to continue?", message: "If you are already sure, please continue.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Edit", style: .cancel, handler: { action in print("edit")
        }))
        alert.addAction(UIAlertAction(title: "Continue", style: .default, handler: { action in print("continue")
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
