//
//  NavigationBarView.swift
//  photo-app
//
//  Created by miguelribas on 03/02/25.
//

import SwiftUI

struct NavigationBarView: View {
    
    @StateObject private var viewModel = NavigationBarViewModel()
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {}) {
                    Image(systemName: viewModel.model.camIcon)
                        .resizable()
                        .frame(width: 34, height: 25)
                }
                .foregroundColor(.black)
                Spacer()
                Button(action: {}) {
                    Image(viewModel.model.imageProfile)
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 35, height: 35)
                        .foregroundColor(.black)
                        .cornerRadius(20)
                        .shadow(color: .gray, radius: 15, x: 1, y: 5)
                        .overlay (
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 2)
                        )
                }
            }
            .padding(.leading)
            .padding(.trailing)
            .padding(.top)
        }
        .onAppear {
            viewModel.loadNavigationBarData()
        }
    }
}
