//
//  GFFollowerItemVC.swift
//  GithubFollowers
//
//  Created by Christian Skorobogatow on 24/4/21.
//


class GFFollowerItemVC: GFUserItemInfoVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
        
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
        
    }
    
    override func actionButtonTapped() {
        guard user.followers != 0 else {
            presentGFAlertOnMainThread(title: "No Followers", message: "This user has no followers... What a shame...", buttonTitle: "So sad")
            return
        }
        delegate.didTapGetFollowers(for: user)

    }
}

