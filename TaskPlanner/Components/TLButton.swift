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
        
          
            
            Text(buttonName)
               .fontWeight(.heavy)
               .foregroundStyle(.white)
               
               .padding(.vertical)
               .frame(width: UIScreen.main.bounds.width - 150)
               
               .background(.blue)
               .clipShape(Capsule())
         
      }
   }
}
#Preview {
   TLButton(buttonName: "Log In", background: .blue) {
      
   }
}
