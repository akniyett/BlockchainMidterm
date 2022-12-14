//
//  RestaurantsTableViewCell.swift
//  Foodly
//
//  Created by Elvina Shamoi on 30/10/2022.
//

import UIKit
import Kingfisher

class RestaurantsTableViewCell: UITableViewCell {
    static let identifier = "RestaurantsTableViewCell"
    @IBOutlet weak var restaurantImage: UIImageView!
    @IBOutlet weak var restaurantName: UILabel!
    @IBOutlet weak var mealName: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var discountLabel: UILabel!
    
    func setup(with restaurant: Restaurants) {
        restaurantImage.kf.setImage(with: restaurant.restaurantImage.asUrl)
        restaurantName.text = restaurant.restaurantName
        mealName.text = restaurant.category
        timeLabel.text = restaurant.timeLabel
        discountLabel.text = restaurant.discountLabel
    }
}
