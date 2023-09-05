//
//  ContentView.swift
//  RecommendApp
//
//  Created by UDAY on 05/09/2023.
//

import SwiftUI
import StoreKit

struct ContentView: View {
    @State private var showOverlay = false
    var body: some View {
        
        VStack(spacing: 10) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Button {
                showOverlay.toggle()
            } label: {
                Text("Show the recommeded app")
            }.appStoreOverlay(isPresented: $showOverlay) {
                SKOverlay.AppConfiguration(appIdentifier: "389801252", position: .bottomRaised)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
