//
//  ContentView.swift
//  Socializer
//
//  Created by Shashwath Dinesh on 12/10/21.
//  Copyright © 2021 Shashwath Dinesh. All rights reserved.
//

import SwiftUI
import MapKit


struct ContentView: View {
    var centerCoordinate = CLLocationCoordinate2D(latitude: 51.5, longitude: -0.12)
    var body: some View {
        
        TabView {
            ProfilePageView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
            HomeView()
                .overlay(
                    ProfileView()
                        .padding(.trailing, 20)
                        .offset(x: 0, y: 0)
                    , alignment: .topTrailing)
                .tabItem {
                    VStack {
                        Image(systemName: "house")
                        Text("Home Page")
                    }
                }
            PointsView()
                .tabItem {
                    Image(systemName: "star.circle")
                    Text("Points")
                }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
