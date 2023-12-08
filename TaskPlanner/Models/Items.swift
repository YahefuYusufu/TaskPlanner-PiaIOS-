//
//  Items.swift
//  TaskPlanner
//
//  Created by yusufyakuf on 2023-11-27.
//

import Foundation

struct Items: Codable, Identifiable {
   let id: String
   let title: String
   var dueDate: TimeInterval
   var createDate: TimeInterval
   var isDone:  Bool
   var notes: String
   
   mutating func setDone(_ state:Bool) {
      isDone = state
   }
   
}

