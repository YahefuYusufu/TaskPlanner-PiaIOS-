//
//  NewItemViewViewModel.swift
//  TaskPlanner
//
//  Created by yusufyakuf on 2023-12-05.
//

import Foundation

class NewItemViewViewModel: ObservableObject {
   @Published var title = ""
   @Published var dueDate = Date()
   @Published var showAlert = false
   init() {
      
   }
   func save() {
      
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
