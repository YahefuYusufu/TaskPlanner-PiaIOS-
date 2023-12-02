//
//  Items.swift
//  TaskPlanner
//
//  Created by yusufyakuf on 2023-11-27.
//

import Foundation

struct Items: Codable, Identifiable {
   var id: String?
   var item = ""
   var dueDate = Date.now + (60*60*24)
   var remainderIsOn = false
   var createDate: TimeInterval
   var isDine:  Bool
   var notes = ""
   
   mutating func setDone(_ state:Bool) {
      isDine = false
   }
   
}

