//: [Previous](@previous)

import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    
    var viewModel = itemViewModel()
    
    var body: some View {
        VStack{
            Label("Name: " + viewModel.name, systemImage: "logo")
            Spacer().frame(height: 20)
            Text("ID: \(viewModel.id)")
        }
    }
}

PlaygroundPage.current.setLiveView(ContentView())


struct itemViewModel {
    var name: String 
    var id: Int
    
    init(_ name: String = "item", id: Int = 0) {
        self.name = name
        self.id = id
    }
}
