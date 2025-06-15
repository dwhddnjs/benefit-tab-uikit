//
//  MyPointCell.swift
//  benefit-tab
//
//  Created by 이종원 on 6/15/25.
//

import UIKit

class MyPointCell: UICollectionViewCell {
 
    @IBOutlet weak var pointLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var iconView: UIImageView!
    
    func configure(item: MyPoint) {
        iconView.image = UIImage(named: "ic_point")
        descriptionLabel.text = "내 포인트"
        pointLabel.text = "\(item.point) 원"
    }
}
