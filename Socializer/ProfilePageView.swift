//
//  ProfilePageView.swift
//  Socializer
//
//  Created by Shashwath Dinesh on 12/11/21.
//  Copyright © 2021 Shashwath Dinesh. All rights reserved.
//

import SwiftUI

struct ProfilePageView: View {
    @State private var isPressed: Bool = false
    
    var body: some View {
        
        NavigationView {
            ScrollView{
                VStack(alignment: .leading){
                    Image("shash")
                        .resizable()
                        .clipped()
                        .frame(width: 200, height: 200, alignment: .center)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.blue, lineWidth: 2.0))
                }
                
                Divider()
                
                VStack(alignment: .leading){
                    
                    Text("About You")
                        .font(.title)
                        .fontWeight(.regular)
                    Divider()
                    
                    Text("Grade: 7th grade")
                        .font(.body)
                        .fontWeight(.regular)
                    
                    Spacer()
                    
                    Text("School: Miller Middle School")
                        .font(.body)
                        .fontWeight(.regular)
                    
                    Spacer()
                    
                    Text("Hobbies: Drawing, arts and crafts, Lego")
                        .font(.body)
                        .fontWeight(.regular)
                    
                    Spacer()
                    
                    Text("Interests: Engineering")
                        .font(.body)
                        .fontWeight(.regular)
                
                }
                
                .padding(.all)
            }.navigationBarTitle("Welcome Shash!", displayMode: .inline)
        }
    }
}

