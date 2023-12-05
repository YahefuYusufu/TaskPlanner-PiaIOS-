//
//  TLButton.swift
//  TaskPlanner
//
//  Created by yusufyakuf on 2023-12-01.
//

import SwiftUI

struct TLButton: View {
   let buttonName: String
   let background: Color
   let action: () -> Void
   
   var body: some View {
      Button {
         action()
      } label: {
         ZStack{
            RoundedRectangle(cornerRadius: 10)
               .foregroundColor(background)
            Text(buttonName)
               .foregroundStyle(Color.white)
               .bold()
         }
      }
   }
}
#Preview {
   TLButton(buttonName: "Log In", background: .blue) {
      
   }
}
