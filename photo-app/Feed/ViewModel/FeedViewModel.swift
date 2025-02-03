//
//  FeedViewModel.swift
//  photo-app
//
//  Created by miguelribas on 03/02/25.
//

import SwiftUI

class FeedViewModel: ObservableObject {
    @Published var model: [FeedModel] = []

    init() {
        loadFeedData()
    }

    func loadFeedData() {
        guard let url = Bundle.main.url(forResource: "feed", withExtension: "json") else {
            print("Arquivo JSON não encontrado.")
            return
        }

        do {
            let data = try Data(contentsOf: url)
            self.model = try JSONDecoder().decode([FeedModel].self, from: data)
        } catch {
            print("Erro ao carregar JSON: \(error)")
        }
    }
}
