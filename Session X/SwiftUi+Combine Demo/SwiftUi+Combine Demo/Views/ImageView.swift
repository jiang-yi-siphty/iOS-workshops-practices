//
//  ImageSwiftUIView.swift
//  SwiftUi+Combine Demo
//
//  Created by Yi JIANG on 14/6/19.
//  Copyright © 2019 Siphty Pty Ltd. All rights reserved.
//

import SwiftUI

struct ImageView : View {
    var image: Image
    
    var body: some View {
            image
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.red, lineWidth: 4))
                .shadow(radius: 10)
    }
}

#if DEBUG
struct ImageView_Previews : PreviewProvider {
    static var previews: some View {
        ImageView(image: landmarkData[4].image(forSize: 250))
    }
}
#endif
