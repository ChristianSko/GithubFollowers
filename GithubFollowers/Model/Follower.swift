//
//  Follower.swift
//  GithubFollowers
//
//  Created by Christian Skorobogatow on 13/2/21.
//

import Foundation

struct Follower: Codable, Hashable {
    var login: String
    var avatarUrl: String
}
