//
//  ContentView.swift
//  photo-app
//
//  Created by miguelribas on 03/02/25.
//

import SwiftUI

struct FeedView: View {
    
    @StateObject private var viewModel = FeedViewModel()
    @State var show: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                NavigationBarView()
                    .padding(.bottom, 15)
                VStack {
                    ScrollView {
                        ForEach(viewModel.model, id: \.userNameCard) { model in
                            CardView(model: model, show: self.$show)
                                .padding(.bottom, 24)
                        }
                    }
                }
            }
        }
        .onAppear {
            viewModel.fetchFeed()
        }
    }
}

#Preview {
    FeedView()
}
