//
//  TodoListView.swift
//  TaskPlanner
//
//  Created by yusufyakuf on 2023-12-02.
//

import SwiftUI
import FirebaseFirestoreSwift

struct TodoListView: View {
   @StateObject var viewModel: TodoListViewViewModel
   @FirestoreQuery var items: [Items]
   
   init(userId: String) {
      self._items = FirestoreQuery(
      collectionPath: "users/\(userId)/todos"
      )
      self._viewModel = StateObject(wrappedValue: TodoListViewViewModel(userId: userId))
   }
   var body: some View {
         NavigationView {
            VStack {
               List(items){ item in
                  TodoListItemView(item: item)
                     .swipeActions {
                        Button(action: {
                           //Delete
                           viewModel.delete(id: item.id)
                        }, label: {
                           Image(systemName: "eraser.fill")
                              .tint(.red)
                        })
                     }
               }
               .listStyle(PlainListStyle())
               .listRowSeparator(.automatic)
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
   TodoListView(userId: "DTBNdYAc3sayrC57vNxixfhgi942")
}
