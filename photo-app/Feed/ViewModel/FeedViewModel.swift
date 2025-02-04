//
//  FeedViewModel.swift
//  photo-app
//
//  Created by miguelribas on 03/02/25.
//

import SwiftUI

class FeedViewModel: ObservableObject {
    
    @Published var model: [FeedModel] = []
    let url = URL(string: "https://api.npoint.io/c3e900a4ec62de7963c8")!

    init() {
        fetchFeed()
    }
    
    func fetchFeed() {
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Erro ao buscar os posts: \(error.localizedDescription)")
                return
            }
            
            if let data = data {
                do {

                    let decodedData = try JSONDecoder().decode([FeedModel].self, from: data)
                    DispatchQueue.main.async {
                        self.model = decodedData
                        print("Dados recebidos:")
                        print(decodedData)
                    }
                } catch {
                    print("Erro ao decodificar JSON: \(error.localizedDescription)")
                }
            }
        }.resume()
    }
    
    /// busca dados do arquivo JSON "feed"no diretório Mocks
    /// necessário adicionar a função dentro do construtor da classe, caso venha ser usada futuramente
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
