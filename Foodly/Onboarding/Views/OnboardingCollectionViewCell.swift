//
//  OnboardingCollectionViewCell.swift
//  Foodly
//
//  Created by Amina Moldamyrza on 30/10/2022.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    static let identifier = "OnboardingCollectionViewCell"
    
    @IBOutlet weak var slideImgView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    
    func setUp(_ slide: OnboardingSlide) {
        slideImgView.image = slide.image
        titleLbl.text = slide.title
        descriptionLbl.text = slide.description
    }
}
