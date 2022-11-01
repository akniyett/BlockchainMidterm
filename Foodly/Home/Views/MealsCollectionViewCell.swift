//
//  MealsCollectionViewCell.swift
//  Foodly
//
//  Created by Elvina Shamoi on 30/10/2022.
//

import UIKit

class MealsCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "MealsCollectionViewCell"
    
    @IBOutlet weak var mealImageView: UIImageView!
    @IBOutlet weak var mealLabel: UILabel!
    
    func setup(with meal: Meals) {
        mealImageView.kf.setImage(with: meal.image.asUrl)
        mealLabel.text = meal.name
    }
    func mealCategorySelected() {
        mealImageView.backgroundColor = isSelected ? .white : .white
        mealLabel.textColor = .black
    }
}
