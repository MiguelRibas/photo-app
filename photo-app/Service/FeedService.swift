//
//  FeedService.swift
//  photo-app
//
//  Created by miguelribas on 04/02/25.
//

import Foundation


class PostService: ObservableObject {
    @Published var model: [FeedModel] = []
}
