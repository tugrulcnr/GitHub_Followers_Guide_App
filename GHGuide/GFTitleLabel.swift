//
//  GFTitleLabel.swift
//  GHGuide
//
//  Created by ertugrul on 17.02.2024.
//

import UIKit

class GFTitleLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    init(textAligment:NSTextAlignment, fontSize: CGFloat){
        super.init(frame: .zero)
        super.textAlignment = textAligment
        super.font = UIFont.systemFont(ofSize: fontSize, weight: .bold)
        configure()
    }
    
    private func configure() {
        textColor                   = .label
        adjustsFontSizeToFitWidth   = true
        minimumScaleFactor          = 0.9
        lineBreakMode               = .byTruncatingTail     //...
        translatesAutoresizingMaskIntoConstraints = false
        
    }

}
