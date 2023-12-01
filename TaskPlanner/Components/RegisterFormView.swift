//
//  RegisterFormView.swift
//  TaskPlanner
//
//  Created by yusufyakuf on 2023-12-01.
//

import SwiftUI

struct RegisterFormView: View {
   @State var name = ""
   @State var email = ""
   @State var password = ""
   let title: String
   let titleLink: String
   
   var body: some View {
      HStack{
         Image(systemName: "person")
            .font(.title2)
            .foregroundColor(.white)
            .frame(width: 35)
         
         SecureField("Name",text:$name)
            .foregroundColor(.white)
         
      }
      .padding()
      .background(Color.white.opacity(0.12))
      .cornerRadius(15)
      .padding(.horizontal)
      .padding(.top)
      
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
         .padding(.top)
      
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
         .padding(.bottom)
      
      TLButton(buttonName: "Create Account", background: .blue, action: {})
      
      HStack {
         Text(title)
            .foregroundStyle(.white.opacity(0.6))
         
         NavigationLink(titleLink,destination: LoginView())
            .foregroundColor(.blue)
         
      }
      .padding(.vertical)

//         Spacer(minLength: 0)
         
      }
      
   }
   
 

#Preview {
   RegisterFormView(title: "", titleLink: "")
}
