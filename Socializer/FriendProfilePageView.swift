//
//  ProfilePageView.swift
//  Socializer
//
//  Created by Shashwath Dinesh on 12/11/21.
//  Copyright © 2021 Shashwath Dinesh. All rights reserved.
//

import SwiftUI

struct FriendProfilePageView: View {
    @State private var isPressed: Bool = false
    
    var body: some View {
        
        NavigationView {
            ScrollView{
                VStack(alignment: .leading){
                    Image("Image-2")
                        .resizable()
                        .clipped()
                        .frame(width: 200, height: 200, alignment: .center)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.blue, lineWidth: 2.0))
                }
                
                Divider()
                
                VStack(alignment: .leading){
                    
                    Text("About Samuel")
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
                    
                    Text("Hobbies: Basketball, Lego")
                        .font(.body)
                        .fontWeight(.regular)
                    
                    Spacer()
                    
                    Text("Interests: Science")
                        .font(.body)
                        .fontWeight(.regular)
                
                }
                
                .padding(.all)
            }.navigationBarTitle("Samuel Livingston", displayMode: .inline)
        }
    }
}

