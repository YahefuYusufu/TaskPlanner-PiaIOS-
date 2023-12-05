//
//  NewItemView.swift
//  TaskPlanner
//
//  Created by yusufyakuf on 2023-12-05.
//

import SwiftUI

struct NewItemView: View {
   @StateObject var viewModel = NewItemViewViewModel()
   @Binding var newItemPresented: Bool
   var body: some View {
      VStack {
         Text("New Task")
            .font(.title)
            .bold()
            .padding(.top,50)
            .foregroundColor(Color.white)
         Form {
            //Title
            TextField("Name",text: $viewModel.title)
            //Duew Date
            DatePicker("Due Date", selection: $viewModel.dueDate)
               .datePickerStyle(GraphicalDatePickerStyle())
            //Button
            TLButton(
               buttonName: "Save",
               background: .pink
            ) {
               if viewModel.canSave {
                  viewModel.save()
                  newItemPresented = false
               } else {
                  viewModel.showAlert = true
               }
            }
            .padding()
         }
         .alert(isPresented: $viewModel.showAlert) {
            Alert(title: Text("ERROR"),
                  message: Text("Please fill in all fields...")
            )
         }
      }
      //      .background(Color("bg").ignoresSafeArea(.all,edges: .all))
   }
}

#Preview {
   NewItemView(newItemPresented: Binding(get: {
      return true
   }, set: { _ in
      
   }))
}
