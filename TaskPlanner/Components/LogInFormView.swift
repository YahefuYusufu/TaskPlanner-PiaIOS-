//
//  FormView.swift
//  TaskPlanner
//
//  Created by yusufyakuf on 2023-12-01.
//

import SwiftUI

struct LogInFormView: View {
   @State var email = ""
   @State var password = ""
 
   var body: some View {
      HStack{
         Image(systemName: "envelope")
            .font(.title2)
            .foregroundColor(.white)
            .frame(width: 35)
         
         SecureField("EMAIL",text:$email)
            .foregroundColor(.white)
         
      }
      .padding()
      .background(Color.white.opacity(0.12))
      .cornerRadius(15)
      .padding(.horizontal)
      HStack{
         Image(systemName: "lock")
            .font(.title2)
            .foregroundColor(.white)
            .frame(width: 35)
         
         SecureField("PASSWORD",text:$password)
            .foregroundColor(.white)
         
      }
      .padding()
      .background(Color.white.opacity(0.12))
      .cornerRadius(15)
      .padding(.horizontal)
      .padding(.top)
      TLButton(buttonName: "Log In", background: .blue, action: {})
      Spacer(minLength: 0)
   }
}

#Preview {
   LogInFormView()
}
