//
//  CardView.swift
//  photo-app
//
//  Created by miguelribas on 03/02/25.
//

import SwiftUI

struct CardView: View {
    
    var model: FeedModel
    @Binding var show: Bool
    
    var body: some View {
        VStack {
            HStack {
                RoundedImageView(imageName: model.imageProfileCard, cornerRadiusValue: 5)
                    .frame(width: 45, height: 50)
                    .scaledToFill()
                    .aspectRatio(contentMode: .fit)
                VStack(alignment: .leading) {
                    Text(model.userNameCard)
                        .font(.footnote)
                        .fontWeight(.bold)
                    HStack {
                        Text(model.locationCard)
                            .font(.footnote)
                            .foregroundColor(.secondary)
                        Spacer()
                        Text(model.timeCountCard)
                            .font(.footnote)
                            .foregroundColor(.secondary)
                    }
                }
            }
            RoundedImageView(imageName: model.imagePostedCard, cornerRadiusValue: 15)
                .frame(maxWidth: .infinity, maxHeight: 350)
                .shadow(color: .gray, radius: 5, x: 0, y: 3)
            
            HStack(spacing: 30) {
                Button(action: {}) {
                    HStack {
                        Image(systemName: model.iconHeartLikesCard)
                            .font(Font.headline.weight(.semibold))
                        Text("\(model.iconHeartCountCard)")
                            .font(.caption)
                    }
                    .foregroundColor(.black)
                }
                Button(action: {}) {
                    HStack {
                        Image(systemName: model.comentsIconCard)
                            .font(Font.headline.weight(.semibold))
                        Text("\(model.comentsCountCard)")
                            .font(.caption)
                    }
                    .foregroundColor(.black)
                    Spacer()
                }
                .padding()
            }
            .padding(.top, 10)
        }
        .padding(.leading)
        .padding(.trailing)
        .onTapGesture {
            self.show.toggle()
        }
    }
}

#Preview {
    CardView(model: FeedModel(imageProfileCard: "profile1", userNameCard: "caiopinto657", locationCard: "Anastácio, MS", timeCountCard: "17 minutes ago", imagePostedCard: "profile1", iconHeartLikesCard: "heart", iconHeartCountCard: 23, comentsIconCard: "bubble.right", comentsCountCard: 13), show: .constant(true))
}
