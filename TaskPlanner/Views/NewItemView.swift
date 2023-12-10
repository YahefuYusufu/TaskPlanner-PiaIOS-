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
            TextField("Tasks",text: $viewModel.title)
               .textFieldStyle(PlainTextFieldStyle())
               .padding(.vertical,10)
            //Duew Date
            DatePicker("Due Date", selection: $viewModel.dueDate)
               .datePickerStyle(CompactDatePickerStyle())
               .padding(.vertical,10)
            //notes
            TextField("Todos",text: $viewModel.notes)
               .textFieldStyle(PlainTextFieldStyle())
               .padding(.vertical,10)
               
            
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
         .foregroundColor(.cyan)
         .alert(isPresented: $viewModel.showAlert) {
            Alert(title: Text("ERROR"),
                  message: Text("Please fill in all fields...")
            )
            
         }
         
      }
   }
}

#Preview {
   NewItemView(newItemPresented: Binding(get: {
      return true
   }, set: { _ in
      
   }))
}
