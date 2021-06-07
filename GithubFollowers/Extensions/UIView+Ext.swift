//
//  UIView+Ext.swift
//  GithubFollowers
//
//  Created by Christian Skorobogatow on 7/6/21.
//

import UIKit


extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views { addSubview(view) }
    }
}

