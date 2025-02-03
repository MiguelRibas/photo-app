//
//  RoundedImageView.swift
//  photo-app
//
//  Created by miguelribas on 03/02/25.
//

import SwiftUI


struct RoundedImageView: View {
    
    var imageName: String
    var cornerRadiusValue: CGFloat
    
    init(imageName: String, cornerRadiusValue: CGFloat) {
        self.imageName = imageName
        self.cornerRadiusValue = cornerRadiusValue
    }
    
    var body: some View {
        Image(imageName)
            .resizable()
            .clipShape(RoundedRectangle(cornerRadius: cornerRadiusValue))
            .padding(.top, 5)
    }
}

#Preview {
    RoundedImageView(imageName: "profile", cornerRadiusValue: 5)
}
