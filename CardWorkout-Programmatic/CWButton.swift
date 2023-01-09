//
//  CWButton.swift
//  CardWorkout-Programmatic
//
//  Created by Hanh Vu on 2023/01/09.
//

import UIKit

class CWButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(color: UIColor, title: String, name: String) {
        super.init(frame: .zero)
        
        configuration = .filled()
        configuration?.baseBackgroundColor = color
        configuration?.baseForegroundColor = .white
        configuration?.cornerStyle = .medium
        configuration?.title = title
        configuration?.image = UIImage(systemName: name)
        configuration?.imagePadding = 5
        
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
}
