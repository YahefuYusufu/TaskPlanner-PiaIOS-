//
//  ContentView.swift
//  TaskPlanner
//
//  Created by yusufyakuf on 2023-11-26.
//

import SwiftUI

struct MainView: View {
   var body: some View {
      NavigationView {
         
         
         LoginView()
            .preferredColorScheme(.dark)
            .navigationBarHidden(true)
      }
   }
}

#Preview {
    MainView()
}
