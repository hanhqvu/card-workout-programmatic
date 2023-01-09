//
//  RulesVC.swift
//  CardWorkout-Programmatic
//
//  Created by Hanh Vu on 2023/01/09.
//

import UIKit

class RulesVC: UIViewController {
    
    let titleLabel = UILabel()
    let rulesLabel = UILabel()
    let excersizeLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureUI()
    }
    
    func configureUI() {
        configureTitleLabel()
        configureRulesLabel()
        configureExcersizeLabel()
    }
    
    func configureTitleLabel() {
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Rules"
        titleLabel.font = .systemFont(ofSize: 40, weight: .bold)
        titleLabel.textAlignment = .center
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
        ])
    }
    
    func configureRulesLabel() {
        view.addSubview(rulesLabel)
        rulesLabel.translatesAutoresizingMaskIntoConstraints = false
        rulesLabel.text = "The values of each card represents the number of excersize you do.\n\n J = 11, Q = 12, K = 13, A = 14"
        rulesLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        rulesLabel.textAlignment = .center
        rulesLabel.lineBreakMode = .byWordWrapping
        rulesLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            rulesLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30),
            rulesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            rulesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
        ])
    }
    
    func configureExcersizeLabel() {
        view.addSubview(excersizeLabel)
        excersizeLabel.translatesAutoresizingMaskIntoConstraints = false
        excersizeLabel.text = "♠️ = Push-up\n\n♦️ = Pull-up\n\n♣️ = Dip\n\n♥️ = Sit-up"
        excersizeLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        excersizeLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            excersizeLabel.topAnchor.constraint(equalTo: rulesLabel.bottomAnchor, constant: 60),
            excersizeLabel.widthAnchor.constraint(equalToConstant: 200),
            excersizeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
}
