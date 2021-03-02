//
//  GFEmptyStateView.swift
//  GithubFollowers
//
//  Created by Christian Skorobogatow on 1/3/21.
//

import UIKit

class GFEmptyStateView: UIImageView {
    
    let messageLabel = GFTitleLabel(textAlignment: .center, fontSize: 28)
    let logoImageImageView = UIImageView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    init(message: String) {
        super.init(frame: .zero)
        messageLabel.text = message
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        addSubview(messageLabel)
        addSubview(logoImageImageView)
        
        messageLabel.numberOfLines = 3
        messageLabel.textColor     = .secondaryLabel
        
        logoImageImageView.image   = UIImage(named: "empty-state-logo")
        logoImageImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            messageLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -150),
            messageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
            messageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
            messageLabel.heightAnchor.constraint(equalToConstant: 200),
            
            logoImageImageView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            logoImageImageView.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            logoImageImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 170),
            logoImageImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 40)
            
        ])
    }
}
