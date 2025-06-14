//
//  TodaySectionItem.swift
//  benefit-tab
//
//  Created by 이종원 on 6/15/25.
//

import Foundation


struct TodaySectionItem {
    var point: MyPoint
    let today: Benefit
    
    var sectionItems: [AnyHashable] {
        return [point, today]
    }
}

extension TodaySectionItem {
    static let mock = TodaySectionItem(point: MyPoint(point: 0), today: Benefit.walk)
}
