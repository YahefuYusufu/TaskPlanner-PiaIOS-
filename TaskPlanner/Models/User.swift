//
//  User.swift
//  TaskPlanner
//
//  Created by yusufyakuf on 2023-11-27.
//

import Foundation

struct User: Codable {
   let id: String
   let name: String
   let email: String
   let joined: TimeInterval
}
