//
//  RegisterPage.swift
//  TaskPlanner
//
//  Created by yusufyakuf on 2023-11-28.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
       VStack {
          HeaderView(title: "Sign Up", subTitle: "Create an account here...", image: "Cat")
          RegisterFormView(title: "Already have Account?", titleLink: "Sign In")
       }
       .background(Color("bg").ignoresSafeArea(.all,edges: .all))
    }
}

#Preview {
    RegisterView()
}
