//
//  MainViewModel.swift
//  TaskPlanner
//
//  Created by yusufyakuf on 2023-12-02.
//

import Foundation
import FirebaseAuth

class MainViewModel: ObservableObject {
   @Published var currentUserID: String = ""
   private var handler: AuthStateDidChangeListenerHandle?
   
   init() {
      self.handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
         DispatchQueue.main.async {
            self?.currentUserID = user?.uid ?? ""
         }
         
      }
   }
   
   public var isSignedIn: Bool {
      return Auth.auth().currentUser != nil
   }
   
   func logOut() {
      do {
         try Auth.auth().signOut()
      } catch {
         print("error")
      }
   }
}
