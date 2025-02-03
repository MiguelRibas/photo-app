//
//  NavigationBarViewModel.swift
//  photo-app
//
//  Created by miguelribas on 03/02/25.
//

import SwiftUI

class NavigationBarViewModel: ObservableObject {
    
    @Published var model: NavigationBarModel!
    
    init() {
        loadNavigationBarData()
    }
    
    func loadNavigationBarData() {
        guard let url = Bundle.main.url(forResource: "navigationBar", withExtension: "json") else {
            print("Arquivo JSON não encontrado")
            return
        }
        
        do {
            let data = try Data(contentsOf: url)
            self.model = try JSONDecoder().decode(NavigationBarModel.self, from: data)
        } catch {
            print("Erro ao carregar JSON: \(error)")
        }
    }
    
}
