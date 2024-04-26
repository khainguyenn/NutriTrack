//
//  ContentView.swift
//  NutriTrack
//
//  Created by Nathan Albe on 4/22/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            HomeView()
                .navigationBarTitle("Home", displayMode: .inline)
        }
    }
}

#Preview {
    ContentView()
}
