//
//  NewItemViewViewModel.swift
//  TaskPlanner
//
//  Created by yusufyakuf on 2023-12-05.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class NewItemViewViewModel: ObservableObject {
   @Published var title = ""
   @Published var notes = ""
   @Published var dueDate = Date()
   @Published var showAlert = false
   
   init() {}
   
   func save() {
      guard canSave else {
         return
      }
      
      //Get current user id
      guard let uId = Auth.auth().currentUser?.uid else {
         return
      }
      
      //Create model
      let newId = UUID().uuidString
      let newItem = Items(
         id: newId,
         title: title,
         dueDate: dueDate.timeIntervalSince1970,
         createDate: Date().timeIntervalSince1970,
         isDine: false,
         notes: notes
      )
      
      //Save Model
      let db = Firestore.firestore()
      db.collection("users")
         .document(uId)
         .collection("todos")
         .document(newId)
         .setData(newItem.asDictionary())
   }
   
   var canSave: Bool {
      guard !title.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
         return false
      }
      guard dueDate >= Date().addingTimeInterval(-86400) else {
         return false
      }
      return true
   }
}
