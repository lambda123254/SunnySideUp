//
//  MilestoneTableViewCell.swift
//  Sunnysideup Test
//
//  Created by Nurul Srianda Putri on 07/04/22.
//

import UIKit

class MilestoneTableViewCell: UITableViewCell {

    @IBOutlet weak var MilestoneView: UIView! {
        didSet {
            // Make it card-like
//            MilestoneView.layer.cornerRadius = 10
//            MilestoneView.layer.shadowOpacity = 1
//            MilestoneView.layer.shadowRadius = 2
//            MilestoneView.layer.shadowColor = UIColor(named: "Orange")?.cgColor
//            MilestoneView.layer.shadowOffset = CGSize(width: 3, height: 3)
//            MilestoneView.backgroundColor = UIColor(named: "Red")
        }
    }
    
    @IBOutlet weak var MilestoneRecipeNumber: UILabel!
    @IBOutlet weak var MilestoneImageView: UIImageView! {
        didSet {
//            MilestoneImageView.layer.shadowOpacity = 1
//            MilestoneImageView.layer.shadowRadius = 2
//            MilestoneImageView.layer.shadowColor = UIColor(named: "Orange")?.cgColor
//            MilestoneImageView.layer.shadowOffset = CGSize(width: 3, height: 3)
        }
    }
    @IBOutlet weak var MilestoneRecipeLabel: UILabel!
    @IBOutlet weak var MilestoneRecipeCookTime: UILabel!
    @IBOutlet weak var MilestoneRecipeCalorie: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
