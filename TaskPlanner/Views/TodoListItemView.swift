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
               .foregroundStyle(Color(.white))
               .bold()
            Text(item.notes)
               .font(.title2)
               .foregroundStyle(Color(.green))
            Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))")
               .font(.subheadline)
               .foregroundStyle(Color(.blue))
         }
         .padding(8)
         Spacer()
         Button(action: {
            viewModel.toggleIsDone(item: item)
         }, label: {
            Image(systemName: item.isDone ? "square.fill" : "square")
               .foregroundColor(Color(.blue))
               .padding(.horizontal)
               .font(.title2)
         })
         .padding(.horizontal,2)
      }
      .background(Color("bg").ignoresSafeArea(.all,edges: .all))
      .cornerRadius(15)
      .padding(.horizontal,12)
      
   }
}

#Preview {
   TodoListItemView(item: .init(id: "123", title: "New Years", dueDate: Date().timeIntervalSince1970, createDate: Date().timeIntervalSince1970, isDone: false, notes: "buy some bear"))
}
