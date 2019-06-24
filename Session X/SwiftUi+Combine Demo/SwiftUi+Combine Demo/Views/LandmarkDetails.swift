//
//  LandmarkDetails.swift
//  SwiftUi+Combine Demo
//
//  Created by Yi JIANG on 18/6/19.
//  Copyright © 2019 Siphty Pty Ltd. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            
            ImageView(image: landmark.image(forSize: 250))
                .offset(y: -100)
                .padding(.bottom, -100)
          
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                
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
        LandmarkDetail(landmark: landmarkData[0])
    }
}
