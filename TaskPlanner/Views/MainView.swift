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
         TodoListView()
      } else {
         LoginView()
            .preferredColorScheme(.dark)
      }
   }
   
//   @ViewBuilder var accountView: some View {
//    
//   }
}

#Preview {
    MainView()
}
