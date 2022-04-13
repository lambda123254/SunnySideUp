//
//  StepByStepViewController.swift
//  MiniChallenge1
//
//  Created by Reza Mac on 07/04/22.
//

import UIKit

struct StepByStep {
    let stepOrder: Int
    let stepDesc: String
    let isTimer: Bool
    let cookTime: Int
    let imageString: String
    var tickTimer: Int
}

struct Recipe{
    let recipeId: Int
    var stepByStep: [StepByStep]
}

class StepByStepViewController: UIViewController {
    var stepCount = 0
//    var dataList = [DemoData]()

    var recipe : [Recipe] = [
        Recipe(recipeId: 0, stepByStep: [
            StepByStep(stepOrder: 1, stepDesc: "Saute onions, galangal, and salam until the aroma comes out.", isTimer: false, cookTime: 0, imageString: "Basic-Cooking-Methods", tickTimer: 0),
            StepByStep(stepOrder: 2, stepDesc: "Add the tempeh and add soy sauce, salt and sugar", isTimer: false, cookTime: 0, imageString: "191009-cooking-vegetables-al-1422", tickTimer: 0),
            StepByStep(stepOrder: 2, stepDesc: "Add sauce and boi it is cooked", isTimer: true, cookTime: 0, imageString: "191009-cooking-vegetables-al-1422", tickTimer: 67),
        ])
    ]
    


    @IBOutlet weak var imageVIew: UIImageView!
    @IBOutlet weak var stepDesc: UILabel!
    @IBOutlet weak var stepNumber: UILabel!
    @IBOutlet weak var stepImage: UIImageView!
    @IBOutlet weak var tickTimerLabel: UILabel!
    @IBOutlet weak var playTimerBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imageVIew.layer.masksToBounds = false
        imageVIew.layer.borderColor = UIColor.black.cgColor
        imageVIew.layer.cornerRadius = imageVIew.frame.height/2.25
        imageVIew.clipsToBounds = true
        
        stepDesc.text = recipe[0].stepByStep[0].stepDesc
        stepNumber.text = "Step 1"
        stepImage.image = UIImage(named: recipe[0].stepByStep[0].imageString)
        
        playTimerBtn.layer.masksToBounds = false
        playTimerBtn.layer.borderColor = UIColor.black.cgColor
        playTimerBtn.layer.cornerRadius = playTimerBtn.frame.height/2
        playTimerBtn.clipsToBounds = true
        
        if recipe[0].stepByStep[stepCount].isTimer {
            playTimerBtn.layer.opacity = 1
            tickTimerLabel.layer.opacity = 1

        }
        else {
            playTimerBtn.layer.opacity = 0
            tickTimerLabel.layer.opacity = 0
        }
    }

    @IBAction func playTimerBtnPressed(_ sender: Any) {
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        playTimerBtn.layer.opacity = 0
        nextBtn.layer.opacity = 0
    }
    @IBAction func nextBtnPressed(_ sender: Any) {
        stepCount += 1
        if stepCount < recipe[0].stepByStep.count {
            stepDesc.text = recipe[0].stepByStep[stepCount].stepDesc
            stepNumber.text = "Step \(recipe[0].stepByStep[stepCount].stepOrder)"
            stepImage.image = UIImage(named: recipe[0].stepByStep[stepCount].imageString)
            
            if recipe[0].stepByStep[stepCount].isTimer {
                if recipe[0].stepByStep[stepCount].tickTimer / 60 % 60 < 10 {
                    tickTimerLabel.text = "0\(recipe[0].stepByStep[stepCount].tickTimer / 60 % 60) :\(recipe[0].stepByStep[stepCount].tickTimer % 60)"
                    if recipe[0].stepByStep[stepCount].tickTimer % 60 < 10 {
                        tickTimerLabel.text = "0\(recipe[0].stepByStep[stepCount].tickTimer / 60 % 60) :0\(recipe[0].stepByStep[stepCount].tickTimer % 60)"
                    }
                }
                else {
                    tickTimerLabel.text = "\(recipe[0].stepByStep[stepCount].tickTimer / 60 % 60) :\(recipe[0].stepByStep[stepCount].tickTimer % 60)"
                }
                tickTimerLabel.layer.opacity = 1
                playTimerBtn.layer.opacity = 1
            }
            else {
                tickTimerLabel.layer.opacity = 0
            }
        }
        else{
            print("done")
            stepCount = 0
            
            let controller = self.storyboard?.instantiateViewController(withIdentifier: "CongratsView") as! CongratsViewController
            controller.modalPresentationStyle = .fullScreen
            controller.modalTransitionStyle = .crossDissolve

            self.present(controller, animated: true)
        }

    }
    
    @objc func updateCounter(){
        if recipe[0].stepByStep[stepCount].tickTimer > 0 {
            recipe[0].stepByStep[stepCount].tickTimer -= 1
            
            
            if recipe[0].stepByStep[stepCount].tickTimer / 60 % 60 < 10 {
                tickTimerLabel.text = "0\(recipe[0].stepByStep[stepCount].tickTimer / 60 % 60) :\(recipe[0].stepByStep[stepCount].tickTimer % 60)"
                if recipe[0].stepByStep[stepCount].tickTimer % 60 < 10 {
                    tickTimerLabel.text = "0\(recipe[0].stepByStep[stepCount].tickTimer / 60 % 60) :0\(recipe[0].stepByStep[stepCount].tickTimer % 60)"
                }
            }
            else {
                tickTimerLabel.text = "\(recipe[0].stepByStep[stepCount].tickTimer / 60 % 60) :\(recipe[0].stepByStep[stepCount].tickTimer % 60)"
            }

        }
        else {
            nextBtn.layer.opacity = 1
        }
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
