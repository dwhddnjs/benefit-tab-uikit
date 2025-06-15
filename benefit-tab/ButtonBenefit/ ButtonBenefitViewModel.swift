//
//  ButtonBenefitViewMoel.swift
//  benefit-tab
//
//  Created by 이종원 on 6/16/25.
//

import Foundation

final class ButtonBenefitViewModel {
    @Published var benefit: Benefit = .today
    @Published var benefitDetails: BenefitDetails = .default
    
    init(benefit: Benefit) {
        self.benefit = benefit
    }
    
    func fetchDetails() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.benefitDetails = .default
        }
    }
}
