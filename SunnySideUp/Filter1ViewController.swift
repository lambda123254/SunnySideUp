//
//  Filter1ViewController.swift
//  Suniside-Jo
//
//  Created by Joana Handoyo on 08/04/22.
//

import UIKit

class Filter1ViewController: UIViewController {
    var eatingFreq = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func OneTimeBtnPressed(_ sender: Any) {
        eatingFreq = 1
    }
    @IBAction func TwoTimeBtnPressed(_ sender: Any) {
        eatingFreq = 2
    }
    @IBAction func ThreeTimeBtnPressed(_ sender: Any) {
        eatingFreq = 3
    }
    @IBAction func nextBtnPressed(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "Filter2View") as! Filter2ViewController
        
        controller.modalPresentationStyle = .fullScreen
        
        controller.modalTransitionStyle = .crossDissolve
        
        controller.eatingFreq = eatingFreq
                
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
