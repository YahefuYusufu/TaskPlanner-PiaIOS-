//
//  TodoListItemView.swift
//  TaskPlanner
//
//  Created by yusufyakuf on 2023-12-08.
//

import SwiftUI

struct TodoListItemView: View {
   @StateObject var viewModel = TodoListItemViewViewModel()
   let item: Items
   var body: some View {
      HStack {
         VStack(alignment: .leading) {
            Text(item.title)
               .font(.title)
               .foregroundStyle(Color(.green))
               .bold()
            Text(item.notes)
               .font(.title2)
               .foregroundStyle(Color(.secondaryLabel))
            Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))")
               .font(.subheadline)
               .foregroundStyle(Color(.cyan))
               .bold()
         }
         Spacer()
         Button(action: {
            viewModel.toggleIsDone(item: item)
         }, label: {
            Image(systemName: item.isDone ? "square.fill" : "square")
               .foregroundColor(Color(.blue))
               .padding(.horizontal)
               .font(.title2)
         })
      }
      .padding(.horizontal)
      
   }
}

#Preview {
   TodoListItemView(item: .init(id: "123", title: "New Years", dueDate: Date().timeIntervalSince1970, createDate: Date().timeIntervalSince1970, isDone: false, notes: "buy some bear"))
}
