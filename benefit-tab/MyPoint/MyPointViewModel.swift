//
//  MyPointViewModel.swift
//  benefit-tab
//
//  Created by 이종원 on 6/16/25.
//

import Foundation

final class MyPointViewModel {
   @Published var point: MyPoint
    
    init(point: MyPoint) {
        self.point = point
    }

}
