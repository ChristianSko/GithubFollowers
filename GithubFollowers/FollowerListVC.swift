//
//  FollowerListVC.swift
//  GithubFollowers
//
//  Created by Christian Skorobogatow on 9/2/21.
//

import UIKit

class FollowerListVC: UIViewController {

    var userName: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    
}
