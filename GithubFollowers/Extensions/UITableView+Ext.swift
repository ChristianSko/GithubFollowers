//
//  UITableView+Ext.swift
//  GithubFollowers
//
//  Created by Christian Skorobogatow on 9/6/21.
//

import UIKit


extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
