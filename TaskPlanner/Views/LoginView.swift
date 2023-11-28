//
//  LoginPage.swift
//  TaskPlanner
//
//  Created by yusufyakuf on 2023-11-28.
//

import SwiftUI

struct LoginView: View {
   @State var email = ""
   @State var password = ""
   
   var body: some View {
      VStack {
         Spacer(minLength: 0)
         Image("Dog")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .cornerRadius(15.0)
         //Dynamic Frame....
            .padding(.horizontal,35)
            .padding(.vertical)
//            .frame(width: 250)
           
         
         HStack {
            VStack(alignment: .leading,spacing: 12,content: {
               Text("Login")
                  .font(.title)
                  .fontWeight(.bold)
                  .foregroundColor(.white)
               
               Text("Please Sign & ------------>")
                  .foregroundColor(Color.white.opacity(0.5))
            })
            Spacer(minLength: 0)
         }
         .padding()
         .padding(.leading,15)
         
         //Text input
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
         
         //ligin button
         Button(action: {}, label: {
            Text("LogIn")
               .fontWeight(.heavy)
               .foregroundStyle(.black)
               .padding(.vertical)
               .frame(width: UIScreen.main.bounds.width - 150)
               .background(.blue)
               .clipShape(Capsule())
            
         })
         .padding(.top)
         Spacer(minLength: 0)
         
         //Sign up
         HStack {
            Text("Don't have an account? ")
               .foregroundStyle(.white.opacity(0.6))
            
            Button(action: {}, label: {
               Text("Sign Up")
            })
         }
         .padding(.vertical)
      }
      .background(Color("bg").ignoresSafeArea(.all,edges: .all))
   }
}

#Preview {
   LoginView()
}
