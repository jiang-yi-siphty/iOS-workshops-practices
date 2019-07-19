//
//  LandmarkDetails.swift
//  SwiftUi User Input
//
//  Created by Yi JIANG on 18/6/19.
//  Copyright © 2019 Siphty Pty Ltd. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var userData: UserData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        userData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            
            ImageView(image: landmark.image(forSize: 250))
                .offset(y: -100)
                .padding(.bottom, -100)
            
            VStack(alignment: .leading) {
                
                HStack(alignment: .top) {
                    Text(landmark.name)
                        .font(.title)
                    
                    Button(action: {
                        self.userData.landmarks[self.landmarkIndex].isFavorite.toggle()
                    }) {
                        if self.userData.landmarks[self.landmarkIndex].isFavorite {
                            Image(systemName: "star.fill")
                                .foregroundColor(Color.yellow)
                        } else {
                            Image(systemName: "star")
                                .foregroundColor(Color.gray)
                        }
                    }
                }
                
                HStack(alignment: .top) {
                    Text(landmark.name)
                        .font(.body)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                }
                .padding()
            
            Spacer()
            }
            .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

struct LandmarkDetail_Preview: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[3])
    }
}
