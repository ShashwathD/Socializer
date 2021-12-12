//
//  HomeView.swift
//  Socializer
//
//  Created by Shashwath Dinesh on 12/11/21.
//  Copyright © 2021 Shashwath Dinesh. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @State private var isPressed: Bool = false
    
    var body: some View {
        
        NavigationView {
            ScrollView{
                VStack(alignment: .leading){
                    
                    Text("Find Friends Nearby")
                        .font(.title)
                        .fontWeight(.bold )
                    Divider()
                    
                    NavigationLink(destination: ContactView()) {
                        ContactView()
                            .frame(width: 400, height: 400)
                            .clipped()
                            //.padding(10)
                            .cornerRadius(15)
                            .shadow(color: Color.black, radius: 5)
                        
                    }
                    
                    Text("New Friends")
                        .font(.title)
                        .fontWeight(.bold )
                    Divider()
                    
                    VStack(alignment: .leading){
                        NavigationLink(destination: FriendProfilePageView()) {
                        Text("Samuel Joined Socializer! Do you want to meet him?")
                            .font(.none)
                            .fontWeight(.regular)
                        }
                        Divider()
                        
                        Text("Jeffrey Joined Socializer! Do you want to meet him?")
                            .font(.none)
                            .fontWeight(.regular)
                        Divider()
                        
                        Text("Bobby Joined Socializer! Do you want to meet him?")
                            .font(.none)
                            .fontWeight(.regular)
                        Divider()
                    
                }
                .padding(.all)
            }.navigationBarTitle("Socializer", displayMode: .inline)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
}

