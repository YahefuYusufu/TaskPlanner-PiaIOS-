//
//  RegisterPage.swift
//  TaskPlanner
//
//  Created by yusufyakuf on 2023-11-28.
//

import SwiftUI

struct RegisterView: View {
   @StateObject var viewModel = RegisterViewModel()
  
   var body: some View {
      VStack {
         Spacer(minLength: 0)
         Image("Cat")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .cornerRadius(15.0)
         //Dynamic Frame....
            .padding(.horizontal,35)
            .padding(.vertical)
         //            .frame(width: 250)
         
         
         HStack {
            VStack(alignment: .leading,spacing: 12,content: {
               Text("Create An Account")
                  .font(.title)
                  .fontWeight(.bold)
                  .foregroundColor(.white)
               
               Text("Get a New Account")
                  .foregroundColor(Color.white.opacity(0.5))
            })
            
         }
         .padding()
         .padding(.leading,15)
         
         //form
         HStack{
            Image(systemName: "person")
               .font(.title2)
               .foregroundColor(.white)
               .frame(width: 35)
            
            TextField("Name",text:$viewModel.name)
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
            
            TextField("EMAIL",text:$viewModel.email)
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
            
            SecureField("PASSWORD",text:$viewModel.password)
               .foregroundColor(.white)
         }
         .padding()
         .background(Color.white.opacity(0.12))
         .cornerRadius(15)
         .padding(.horizontal)
         .padding(.top)
         .padding(.bottom)
         
         TLButton(buttonName: "Create Account", background: .blue, action: {
            viewModel.register()
         })
         Spacer(minLength: 0)
      }
      .background(Color("bg").ignoresSafeArea(.all,edges: .all))
   }
}

#Preview {
   RegisterView()
}
