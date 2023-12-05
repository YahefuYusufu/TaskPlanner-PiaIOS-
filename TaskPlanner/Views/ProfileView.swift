//
//  ProfileView.swift
//  TaskPlanner
//
//  Created by yusufyakuf on 2023-12-05.
//

import SwiftUI

struct ProfileView: View {
   @StateObject var viewModel = ProfileViewViewModel()
    var body: some View {
       NavigationView {
          VStack {
             
          }
          .navigationTitle("Profile Page")
       }
    }
}

#Preview {
    ProfileView()
}
