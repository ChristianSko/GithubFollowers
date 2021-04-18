//
//  GFSecondaryTitleLabel.swift
//  GithubFollowers
//
//  Created by Christian Skorobogatow on 18/4/21.
//

import UIKit

class GFSecondaryTitleLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(fontsize: CGFloat) {
        super.init(frame: .zero)
        font = UIFont.systemFont(ofSize: fontsize, weight: .medium)
        configure()
    }
    
    private func configure() {
        textColor                   = .secondaryLabel
        adjustsFontSizeToFitWidth   = true
        minimumScaleFactor          = 0.90
        lineBreakMode               = .byWordWrapping
        translatesAutoresizingMaskIntoConstraints = false
    }

}
