//
//  GFTabbarController.swift
//  GithubFollowers
//
//  Created by Christian Skorobogatow on 27/5/21.
//

import UIKit

class GFTabbarController: UITabBarController {
    

    override func viewDidLoad() {
        UITabBar.appearance().tintColor = .systemGreen
        viewControllers                 = [createSearchNC(), createFavoritesNC()]
    }
    
    
    func createSearchNC() -> UINavigationController {
        
        let searchVC = SearchVC()
        searchVC.title = "Search"
        searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        return UINavigationController(rootViewController: searchVC)
    }
    
    
    func createFavoritesNC() -> UINavigationController {
        
        let favoritesVC = FavoriteListVC()
        favoritesVC.title = "Favorites"
        favoritesVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        return UINavigationController(rootViewController: favoritesVC)
    }
}
