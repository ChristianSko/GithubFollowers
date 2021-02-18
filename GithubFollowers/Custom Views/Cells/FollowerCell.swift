//
//  FollowerCell.swift
//  GithubFollowers
//
//  Created by Christian Skorobogatow on 18/2/21.
//

import UIKit

class FollowerCell: UICollectionViewCell {
    
    static let reuseID = "FollowerCell"
    
    
    let avatarImageView = UIImageView()
    let userNameLabel = GFTitleLabel(textAlignment: .center, fontSize: 16)
}
