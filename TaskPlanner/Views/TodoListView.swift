//
//  TodoListView.swift
//  TaskPlanner
//
//  Created by yusufyakuf on 2023-12-02.
//

import SwiftUI

struct TodoListView: View {
   @StateObject var viewModel = TodoListViewViewModel()
   
   private let userId: String
   init(userId: String) {
      self.userId = userId
   }
   var body: some View {
         NavigationView {
            VStack {
               
            }
            .navigationTitle("Plane Something")
            .toolbar {
               Button(action: {
                  //action
                  viewModel.showingNewItemView = true
               }, label: {
                  Image(systemName: "plus.app.fill")
                     .font(.title2)
               })
            }
         }
         .sheet(isPresented: $viewModel.showingNewItemView){
            NewItemView(newItemPresented: $viewModel.showingNewItemView)
         }
   }
}

#Preview {
   TodoListView(userId: "")
}
