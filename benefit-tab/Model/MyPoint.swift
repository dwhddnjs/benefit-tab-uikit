//
//  MyPoint.swift
//  benefit-tab
//
//  Created by 이종원 on 6/15/25.
//

import Foundation


struct MyPoint: Hashable {
    var point: Int
    
}

extension MyPoint {
    static let `default` = MyPoint(point: 0)
}
