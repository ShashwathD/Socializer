//
//  PointsView.swift
//  Socializer
//
//  Created by Shashwath Dinesh on 12/12/21.
//  Copyright © 2021 Shashwath Dinesh. All rights reserved.
//

import SwiftUI

struct PointsView: View {
    var body: some View {
        NavigationView {
            ScrollView{
                VStack(alignment: .leading){
                    VStack () {
                    Text("Social Score: 40")
                            .font(.title)
                            .fontWeight(.bold ).padding(.leading, 20)
                        let font = Font.system(size: 10).bold()
                        Spacer()
                        HStack() {
                        Image(systemName: "star.fill")
                                .renderingMode(.original)
                                .font(font)
                        Image(systemName: "star.fill")
                                .renderingMode(.original)
                                .font(font)
                        Image(systemName: "star.fill")
                                .renderingMode(.original)
                                .font(font)
                        Image(systemName: "star.fill")
                                .renderingMode(.original)
                                .font(font)
                        Image(systemName: "star.fill")
                                .renderingMode(.original)
                                .font(font)
                        }
                        Spacer()
                        //Text("Book").font(font)
                    }
                    Divider()
                    HStack() {
                    Text("Became friends with Bobby: ")
                            .font(.body)
                            .fontWeight(.regular ).padding()
                    Text("15")
                        .font(.body)
                        .fontWeight(.bold)
                    }
                    HStack() {
                    Text("Played basketball with Samuel: ")
                            .font(.body)
                            .fontWeight(.regular).padding()
                    Text("10")
                        .font(.body)
                        .fontWeight(.bold)
                    }
                    HStack() {
                    Text("Met Mike: ")
                            .font(.body)
                            .fontWeight(.regular).padding()
                    Text("10")
                        .font(.body)
                        .fontWeight(.bold)
                    }
                    HStack() {
                    Text("Sent a Message to Jeffrey: ")
                            .font(.body)
                            .fontWeight(.regular).padding()
                    Text("5")
                        .font(.body)
                        .fontWeight(.bold)
                    }
                    Divider()
                    
                    Text("Nice job Shash!")
                        .font(.title)
                        .fontWeight(.bold ).padding(.leading, 20)
                }.navigationBarTitle("Points", displayMode: .large)
            }
        }
    }
}

struct PointsView_Previews: PreviewProvider {
    static var previews: some View {
        PointsView()
    }
}
