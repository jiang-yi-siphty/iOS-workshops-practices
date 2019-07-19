//
//  AttractionsListView.swift
//  SwiftUi+Combine Demo
//
//  Created by Yi JIANG on 18/6/19.
//  Copyright © 2019 Siphty Pty Ltd. All rights reserved.
//

import SwiftUI

struct AttractionsList : View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in 
                NavigationButton(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
                .padding(.top, 32.0)
                .padding(.leading, 62.0)
            }.navigationBarTitle(Text("旅游景点"))
                
        }
    }
}


#if DEBUG
struct AttractionsList_Previews : PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 8", "iPhone SE", "iPhone XS Max"].identified(by: \.self)) { deviceName in
            AttractionsList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
        }
    }
}
#endif
