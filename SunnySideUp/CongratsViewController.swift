//
//  CongratsViewController.swift
//  SunnySideUp
//
//  Created by Nurul Srianda Putri on 13/04/22.
//

import UIKit

class CongratsViewController: ViewController {

    @IBOutlet weak var CongratsTitleLabel: UILabel!
    @IBOutlet weak var CongratsMessageLabel: UILabel!
    @IBOutlet weak var CongratsMenuImageView: UIImageView!
    @IBOutlet weak var doneBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func doneBtnPressed(_ sender: Any) {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "MilestoneView") as! MilestoneViewController
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
