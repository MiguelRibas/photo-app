//
//  CardView.swift
//  photo-app
//
//  Created by miguelribas on 03/02/25.
//

import SwiftUI

struct CardView: View {
    var imageProfileCard: String
    var userNameCard: String
    var locationCard: String
    var timeCountCard: String
    var imagePostedCard: String
    var iconHeartLikesCard: String
    var iconHeartCountCard: Int
    var comentsIconCard: String
    var comentsCountCard: Int
    
    init(imageProfileCard: String,
         userNameCard: String,
         locationCard: String,
         timeCountCard: String,
         imagePostedCard: String,
         iconHeartLikesCard: String,
         iconHeartCountCard: Int,
         comentsIconCard: String,
         comentsCountCard: Int) {
        
        self.imageProfileCard = imageProfileCard
        self.userNameCard = userNameCard
        self.locationCard = locationCard
        self.timeCountCard = timeCountCard
        self.imagePostedCard = imagePostedCard
        self.iconHeartLikesCard = iconHeartLikesCard
        self.iconHeartCountCard = iconHeartCountCard
        self.comentsIconCard = comentsIconCard
        self.comentsCountCard = comentsCountCard
    }
    
    var body: some View {
        VStack {
            HStack {
                RoundedImageView(imageName: imageProfileCard, cornerRadiusValue: 5)
                    .frame(width: 45, height: 50)
                    .scaledToFill()
                    .aspectRatio(contentMode: .fit)
                VStack(alignment: .leading) {
                    Text(userNameCard)
                        .font(.footnote)
                        .fontWeight(.bold)
                    HStack {
                        Text(locationCard)
                            .font(.footnote)
                            .foregroundColor(.secondary)
                        Spacer()
                        Text(timeCountCard)
                            .font(.footnote)
                            .foregroundColor(.secondary)
                    }
                }
            }
            RoundedImageView(imageName: imagePostedCard, cornerRadiusValue: 15)
                .frame(maxWidth: .infinity, maxHeight: 350)
                .shadow(color: .gray, radius: 5, x: 0, y: 3)
            
            HStack(spacing: 30) {
                Button(action: {}) {
                    HStack {
                        Image(systemName: iconHeartLikesCard)
                            .font(Font.headline.weight(.semibold))
                        Text("\(iconHeartCountCard)")
                            .font(.caption)
                    }
                    .foregroundColor(.black)
                }
                Button(action: {}) {
                    HStack {
                        Image(systemName: comentsIconCard)
                            .font(Font.headline.weight(.semibold))
                        Text("\(comentsCountCard)")
                            .font(.caption)
                    }
                    .foregroundColor(.black)
                    Spacer()
                }
            }
            .padding(.top, 10)
        }
        .padding(.leading)
        .padding(.trailing)
    }
}
