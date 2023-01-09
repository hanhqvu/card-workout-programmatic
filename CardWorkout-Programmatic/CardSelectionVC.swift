//
//  CardSelectionVC.swift
//  CardWorkout-Programmatic
//
//  Created by Hanh Vu on 2023/01/09.
//

import UIKit

class CardSelectionVC: UIViewController {

    let cardImageView = UIImageView()
    let stopButton = CWButton(backgroundColor: .systemRed, title: "Stop!")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
    }
}
