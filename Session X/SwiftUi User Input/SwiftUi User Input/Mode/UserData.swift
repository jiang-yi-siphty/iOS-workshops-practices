//
//  UserData.swift
//  SwiftUi User Input
//
//  Created by Yi JIANG on 25/6/19.
//  Copyright © 2019 Siphty Pty Ltd. All rights reserved.
//

import SwiftUI
import Combine


final class UserData: BindableObject  {
    let didChange = PassthroughSubject<UserData, Never>()
    
    var showFavoritesOnly = false{
        didSet {
            didChange.send(self)
        }
    }
    var landmarks = landmarkData{
        didSet {
            didChange.send(self)
        }
    }
}
