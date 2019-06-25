//
//  AttractionsListView.swift
//  SwiftUi User Input
//
//  Created by Yi JIANG on 18/6/19.
//  Copyright © 2019 Siphty Pty Ltd. All rights reserved.
//

import SwiftUI

struct AttractionsList : View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(userData.landmarks) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationButton(
                        destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("旅游景点"))
        }
    }
}


#if DEBUG
struct AttractionsList_Previews : PreviewProvider {
    static var previews: some View {
        AttractionsList()
            .environmentObject(UserData())
    }
}
#endif
