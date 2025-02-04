//
//  FeedModel.swift
//  photo-app
//
//  Created by miguelribas on 03/02/25.
//

import Foundation

struct FeedModel: Codable, Identifiable {
    let id = UUID()
    let imageProfileCard: String
    let userNameCard: String
    let locationCard: String
    let timeCountCard: String
    let imagePostedCard: String
    let iconHeartLikesCard: String
    let iconHeartCountCard: Int
    let comentsIconCard: String
    let comentsCountCard: Int
}
