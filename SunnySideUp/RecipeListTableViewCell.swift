//
//  RecipeListTableViewCell.swift
//  Sunnysideup Test
//
//  Created by Nurul Srianda Putri on 11/04/22.
//

import UIKit

class RecipeListTableViewCell: UITableViewCell {
    var RecipeDetailsButtonTapped: (() -> ())?

    @IBOutlet weak var RecipeContainerView: UIView! {
        didSet {
            RecipeContainerView.layer.cornerRadius = 10
            RecipeContainerView.layer.shadowOpacity = 0.3
            RecipeContainerView.layer.shadowRadius = 2
            RecipeContainerView.layer.shadowOffset = CGSize(width: 1, height: 1)
        }
    }
    
    @IBOutlet weak var RecipeClippingView: UIView! {
        didSet {
            RecipeClippingView.layer.cornerRadius = 10
            RecipeClippingView.layer.masksToBounds = true
        }
    }
    
    @IBOutlet weak var RecipeImageContainerView: UIView! {
        didSet {
            RecipeImageContainerView.layer.cornerRadius = 10
            RecipeImageContainerView.layer.shadowOpacity = 0.8
            RecipeImageContainerView.layer.shadowRadius = 2
            RecipeImageContainerView.layer.shadowOffset = CGSize.zero
            RecipeImageContainerView.layer.masksToBounds = false
        }
    }

    @IBOutlet weak var RecipeNameLabel: UILabel! {
        didSet {
            RecipeNameLabel.numberOfLines = 2
        }
    }
    @IBOutlet weak var RecipeTimeCalorieLabel: UILabel!
    @IBOutlet weak var RecipeDescriptionLabel: UILabel! {
        didSet {
            RecipeDescriptionLabel.numberOfLines = 5
        }
    }
    @IBOutlet weak var RecipeImageView: UIImageView! {
        didSet {
            RecipeImageView.layer.cornerRadius = 10
            RecipeImageView.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var RecipeDetailsButton: UIButton!
    
    
    @IBAction func onClick(_ sender: UIButton) {
        RecipeDetailsButtonTapped?()
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
