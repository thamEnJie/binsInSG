//
//  ContentView.swift
//  binsInSG
//
//  Created by Tham En Jie on 15/8/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            BinMapView()
                .tabItem {
                    Label("Map", systemImage: "map")
                }
            QueryInfoView()
                .tabItem {
                    Label("Where to throw?", systemImage: "questionmark.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
