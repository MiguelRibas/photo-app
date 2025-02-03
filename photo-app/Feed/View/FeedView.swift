//
//  ContentView.swift
//  photo-app
//
//  Created by miguelribas on 03/02/25.
//

import SwiftUI

struct FeedView: View {
    
    @StateObject private var viewModel = FeedViewModel()
    
    var body: some View {
        ZStack {
            VStack {
                NavigationBarView()
                    .padding(.bottom, 15)
                VStack {
                    ScrollView {
                        ForEach(viewModel.model, id: \.userNameCard) { index in
                            CardView(imageProfileCard: index.imageProfileCard,
                                     userNameCard: index.userNameCard,
                                     locationCard: index.locationCard,
                                     timeCountCard: index.timeCountCard,
                                     imagePostedCard: index.imagePostedCard,
                                     iconHeartLikesCard: index.iconHeartLikesCard,
                                     iconHeartCountCard: index.iconHeartCountCard,
                                     comentsIconCard: index.comentsIconCard,
                                     comentsCountCard: index.comentsCountCard)
                                .padding(.bottom, 24)
                        }
                    }
                }
            }
        }
        .onAppear {
            viewModel.loadFeedData()
        }
    }
}

#Preview {
    FeedView()
}
