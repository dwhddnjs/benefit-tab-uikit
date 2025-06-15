//
//  TodayBenefitCell.swift
//  benefit-tab
//
//  Created by 이종원 on 6/15/25.
//

import UIKit

class TodayBenefitCell: UICollectionViewCell {
    
    @IBOutlet weak var ctaButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = UIColor.systemGray.withAlphaComponent(0.3)
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 10
        
        self.ctaButton.layer.masksToBounds = true
        self.ctaButton.layer.cornerRadius = 5
    }
    
    func configure(item: Benefit) {
        titleLabel.text = item.title
        ctaButton.setTitle(item.ctaTitle, for: .normal)
    }
}
