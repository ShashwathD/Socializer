//
//  ProfileView.swift
//  Socializer
//
//  Created by Shashwath Dinesh on 12/11/21.
//  Copyright © 2021 Shashwath Dinesh. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        Image("shash")
            .resizable()
            .clipped()
            .frame(width: 40, height: 40, alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.blue, lineWidth: 2.0))
    }
}
