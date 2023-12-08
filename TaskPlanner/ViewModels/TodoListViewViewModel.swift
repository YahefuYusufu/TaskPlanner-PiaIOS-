//
//  TodoListViewViewModel.swift
//  TaskPlanner
//
//  Created by yusufyakuf on 2023-12-05.
//

import Foundation
import FirebaseFirestore

//ViewModel for list of items view
//primary tab

class TodoListViewViewModel: ObservableObject {
   @Published var showingNewItemView = false
   
   private let userId: String
   init(userId: String) {
      self.userId = userId
   }
   
   //Delete todo list item
   //- Parameter id: item id to delete
   func delete(id: String) {
      let db = Firestore.firestore()
      db.collection("users")
         .document(userId)
         .collection("todos")
         .document(id)
         .delete()
   }
   func edit(id: String) {
      
   }
}
