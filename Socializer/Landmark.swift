//
//  Landmark.swift
//  Socializer
//
//  Created by Shashwath Dinesh on 12/11/21.
//  Copyright © 2021 Shashwath Dinesh. All rights reserved.
//


import SwiftUI
import CoreLocation

struct Landmark: Equatable {
    static func ==(lhs: Landmark, rhs: Landmark) -> Bool {
        lhs.id == rhs.id
    }
    
    let id = UUID().uuidString
    let name: String
    let location: CLLocationCoordinate2D
}

struct ContactView: View {
    @State var landmarks: [Landmark] = [
        Landmark(name: "Sanchitha", location: .init(    latitude: 37.302610, longitude: -122.015740)),
        Landmark(name: "Jeffrey", location: .init(latitude: 37.294010,
        longitude: -122.018960)),
        Landmark(name: "Shailesh", location: .init(latitude: 37.305050, longitude: -121.998000)),
        Landmark(name: "Samuel", location: .init(latitude: 37.303280, longitude: -122.015390)),
        Landmark(name: "Bobby", location: .init(latitude: 37.303822, longitude: -122.013489)),
        Landmark(name: "Vinay", location: .init(latitude: 37.303110, longitude: -122.013850)),



    ]
    
    @State var selectedLandmark: Landmark? = Landmark(name: "Shashwath", location: .init(latitude: 37.301730,
                                                                                             longitude: -122.013790))
    
    var body: some View {
        ZStack {
            MapView(landmarks: $landmarks,
                    selectedLandmark: $selectedLandmark)
                .edgesIgnoringSafeArea(.vertical)
            VStack {
                Spacer()
                Button(action: {
                    self.selectNextLandmark()
                }) {
                    Text("Next")
                        .foregroundColor(.black)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8)
                        .shadow(radius: 3)
                        .padding(.bottom)
                }
            }
        }
    }
    
    private func selectNextLandmark() {
        if let selectedLandmark = selectedLandmark, let currentIndex = landmarks.firstIndex(where: { $0 == selectedLandmark }), currentIndex + 1 < landmarks.endIndex {
            self.selectedLandmark = landmarks[currentIndex + 1]
        } else {
            selectedLandmark = landmarks.first
        }
    }
}
