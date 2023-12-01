//
//  LoginButton.swift
//  TaskPlanner
//
//  Created by yusufyakuf on 2023-12-01.
//

import SwiftUI

struct SignUpButton: View {
   let title: String
   let titleLink: String
   
   var body: some View {
      HStack {
         Text(title)
            .foregroundStyle(.white.opacity(0.6))
         
         NavigationLink(titleLink,destination: RegisterView())
            .foregroundColor(.blue)
         
      }
      .padding(.vertical)
//      //Sign up
//               HStack {
//                  Text("Don't have an account? ")
//                     .foregroundStyle(.white.opacity(0.6))
//      
//                  Button(action: {}, label: {
//                     Text("Sign Up")
//                  })
//               }
//               .padding(.vertical)
   }
}

#Preview {
   SignUpButton(title: "", titleLink: "")
}
