//
//  ButtonBenefitViewController.swift
//  benefit-tab
//
//  Created by 이종원 on 6/16/25.
//

import UIKit
import Combine

class ButtonBenefitViewController: UIViewController {
    
    
    @IBOutlet weak var vStackView: UIStackView!
    @IBOutlet weak var ctaButton: UIButton!
    
    var benefit: Benefit = .today
    var benefitDetails: BenefitDetails = .default
    var viewModel: ButtonBenefitViewModel!
    var subscriptions = Set<AnyCancellable>()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        bind()
        
        viewModel.fetchDetails()
        ctaButton.setTitle(benefit.title, for: .normal)
    }
    
    private func bind() {
        viewModel.$benefit
            .receive(on: RunLoop.main)
            .sink { benefit in
                self.ctaButton.setTitle(benefit.ctaTitle, for: .normal)
            }.store(in: &subscriptions)
        
        viewModel.$benefitDetails
            .compactMap {$0}
            .receive(on: RunLoop.main)
            .sink { details in
                self.addGuides(details: details)
            }.store(in: &subscriptions)
    }
    
    private func setupUI () {
        ctaButton.layer.masksToBounds = true
        ctaButton.layer.cornerRadius = 5
        navigationItem.largeTitleDisplayMode = .never
    }
    
    private func addGuides (details: BenefitDetails) {
        let guidesView = vStackView.arrangedSubviews.filter { $0 is BenefitGuideView }
        
        guard guidesView.isEmpty else { return }
        
        let guideView: [BenefitGuideView] = details.guides.map { guide in
            let guideView = BenefitGuideView(frame: .zero)
            guideView.icon.image = UIImage(systemName: guide.iconName)
            guideView.title.text = guide.guide
            return guideView
        }
        
        guideView.forEach { view in
            self.vStackView.addArrangedSubview(view)
            NSLayoutConstraint.activate([
                view.heightAnchor.constraint(equalToConstant: 60)
            ])
        }
    }
}
