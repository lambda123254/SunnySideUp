//
//  WelcomeViewController.swift
//  Suniside-Jo
//
//  Created by Joana Handoyo on 07/04/22.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var imgHello: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        imgHello.layer.cornerRadius = imgHello.frame.size.width / 2
        imgHello.clipsToBounds = true
//        imgHello.layer.masksToBounds = true
//        imgHello.center = self.view.center
    }
    
    
    @IBAction func nextBtnPressed(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "Filter1View") as! Filter1ViewController
        
        controller.modalPresentationStyle = .fullScreen
        
        controller.modalTransitionStyle = .crossDissolve
                
        present(controller, animated: true)
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
