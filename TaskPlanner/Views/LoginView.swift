//
//  LoginPage.swift
//  TaskPlanner
//
//  Created by yusufyakuf on 2023-11-28.
//

import SwiftUI

struct LoginView: View {
   
   
   var body: some View {
      NavigationView {
         VStack {
            HeaderView(title: "Login", subTitle: "Please Sign & ------------>", image: "Dog")
            LogInFormView()
            SignUpButton(title: "Don't have an account? ", titleLink: "Sign Up")
 
         }
         .background(Color("bg").ignoresSafeArea(.all,edges: .all))
      }
   }
}
#Preview {
   LoginView()
}
