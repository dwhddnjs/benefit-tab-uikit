//
//  BenefitCell.swift
//  benefit-tab
//
//  Created by 이종원 on 6/15/25.
//

import UIKit

class BenefitCell: UICollectionViewCell {
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var benefitImage: UIImageView!
    
    func configure(item: Benefit) {
        benefitImage.image = UIImage(named: item.imageName)
        titleLabel.text = item.title
        descriptionLabel.text = item.description
    }
}
