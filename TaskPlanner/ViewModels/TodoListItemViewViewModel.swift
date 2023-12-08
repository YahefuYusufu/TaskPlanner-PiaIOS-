//
//  TodoListItemViewViewModel.swift
//  TaskPlanner
//
//  Created by yusufyakuf on 2023-12-05.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore
//ViewModel for single todo list item view (each row in items list)
 
class TodoListItemViewViewModel: ObservableObject {
   init() {
      
   }
   
   //is done
   func toggleIsDone(item: Items) {
      var itemCopy = item
      itemCopy.setDone(!item.isDone)
      
      guard let uid = Auth.auth().currentUser?.uid else {
         return
      }
      
      let db = Firestore.firestore()
      db.collection("users")
         .document(uid)
         .collection("todos")
         .document(itemCopy.id)
         .setData(itemCopy.asDictionary())
   }
}
