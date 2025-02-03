//
//  FeedModel.swift
//  photo-app
//
//  Created by miguelribas on 03/02/25.
//

import Foundation

struct FeedModel: Codable {
    var imageProfileCard: String
    var userNameCard: String
    var locationCard: String
    var timeCountCard: String
    var imagePostedCard: String
    var iconHeartLikesCard: String
    var iconHeartCountCard: Int
    var comentsIconCard: String
    var comentsCountCard: Int
}
