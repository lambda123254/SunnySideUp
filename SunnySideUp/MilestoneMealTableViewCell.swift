//
//  MilestoneMealTableViewCell.swift
//  Sunnysideup Test
//
//  Created by Nurul Srianda Putri on 11/04/22.
//

import UIKit



class MilestoneMealTableViewCell: UITableViewCell{
    
    var MilestoneStartButtonTapped: (() -> ())?
    
    @IBOutlet weak var MealContainerView: UIView! {
        didSet {
            MealContainerView.layer.cornerRadius = 10
            MealContainerView.layer.shadowOpacity = 0.3
            MealContainerView.layer.shadowRadius = 2
            MealContainerView.layer.shadowOffset = CGSize(width: 1, height: 1)
        }
    }
    
    @IBOutlet weak var MealClippingView: UIView! {
        didSet {
            MealClippingView.layer.cornerRadius = 10
            MealClippingView.layer.masksToBounds = true
        }
    }
    
    @IBOutlet weak var MilestoneImageContainerView: UIView! {
        didSet {
            MilestoneImageContainerView.layer.cornerRadius = 10
            MilestoneImageContainerView.layer.shadowOpacity = 0.8
            MilestoneImageContainerView.layer.shadowRadius = 2
            MilestoneImageContainerView.layer.shadowOffset = CGSize.zero
            MilestoneImageContainerView.layer.masksToBounds = false
        }
    }
    
    @IBOutlet weak var MilestoneMealNumber: UILabel!
    @IBOutlet weak var MilestoneMealLabel: UILabel! {
        didSet {
            MilestoneMealLabel.numberOfLines = 2
        }
    }
    
    @IBOutlet weak var MilestoneMealImageView: UIImageView! {
        didSet {
            MilestoneMealImageView.layer.cornerRadius = 10
            MilestoneMealImageView.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var MilestoneMealCookTimeLabel: UILabel!
    @IBOutlet weak var MilestoneMealCalorieLabel: UILabel!
    @IBOutlet weak var MilestoneStartButton: UIButton!

    
    @IBAction func onClick(_ sender: UIButton) {
        MilestoneStartButtonTapped?()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
