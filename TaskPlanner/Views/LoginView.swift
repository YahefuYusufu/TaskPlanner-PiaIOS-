//
//  LoginPage.swift
//  TaskPlanner
//
//  Created by yusufyakuf on 2023-11-28.
//

import SwiftUI

struct LoginView: View {
   @StateObject var viewModel = LoginViewViewModel()
   
   var body: some View {
      NavigationView {
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
                  Text("Log In")
                     .font(.title)
                     .fontWeight(.bold)
                     .foregroundColor(.white)
                  
                  Text("Place Log IN")
                     .foregroundColor(Color.white.opacity(0.5))
               })
               
            }
            .padding()
            .padding(.leading,15)
            
            
            Form {
               if !viewModel.errorMessage.isEmpty {
                  Text(viewModel.errorMessage)
                     .foregroundStyle(Color.white)
               }
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
               //               .padding(.horizontal)
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
               //               .padding(.horizontal)
               .padding(.top)
               
               //Log in button
               Button(action: {
                  viewModel.login()
               }, label: {
                  Text("Log In")
                     .fontWeight(.heavy)
                     .foregroundStyle(.white)
                     .padding(.vertical)
                     .frame(width: UIScreen.main.bounds.width - 100)
                     .background(.blue)
                     .clipShape(Capsule())
               })
               .padding(.horizontal)
               .padding(.top)
            }
        
         //bottom
         HStack {
            Text("Do You Have Account?")
               .foregroundStyle(.white.opacity(0.6))
            
            NavigationLink("Sign Up",destination: RegisterView())
               .foregroundColor(.blue)
            
         }
         .padding(.vertical)
         
         //           Spacer(minLength: 0)
         
         }
      }
      //         .background(Color("bg").ignoresSafeArea(.all,edges: .all))
   }
}

#Preview {
   LoginView()
}
