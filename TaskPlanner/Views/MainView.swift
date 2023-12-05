//
//  ContentView.swift
//  TaskPlanner
//
//  Created by yusufyakuf on 2023-11-26.
//

import SwiftUI

struct MainView: View {
   @StateObject var viewModel = MainViewModel()
   
   var body: some View {
      if viewModel.isSignedIn, !viewModel.currentUserID.isEmpty {
       accountView
      } else {
         LoginView()
      }
   }
   
   @ViewBuilder
   var accountView: some View {
      TabView {
         TodoListView(userId: viewModel.currentUserID)
            .tabItem {
               Label("Plans",systemImage: "doc.plaintext.fill")
            }
         ProfileView()
            .tabItem{
               Label("Profile",systemImage: "person.circle")
            }
      }
   }
}

#Preview {
    MainView()
}
