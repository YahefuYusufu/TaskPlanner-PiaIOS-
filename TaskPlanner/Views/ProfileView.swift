//
//  ProfileView.swift
//  TaskPlanner
//
//  Created by yusufyakuf on 2023-12-05.
//

import SwiftUI

struct ProfileView: View {
   @StateObject var viewModel = ProfileViewViewModel()
   @State private var progress = 0.2
   
    var body: some View {
       NavigationView {
          VStack {
             if let user = viewModel.user {
                profile(user: user)
             } else {
                ProgressView(value: progress,total: 1.0)
                   .progressViewStyle(GaugeProgressStyle())
                   .frame(width: 150,height: 150)
                   .contentShape(Rectangle())
                   .onTapGesture {
                      if progress < 1.0 {
                         withAnimation {
                            progress += 0.2
                         }
                      }
                   }
             }
          }
          .navigationTitle("Profile")
       }
       .onAppear {
          viewModel.fetchUser()
       }
       
    }
   
   @ViewBuilder
   func profile(user: User) -> some View {
      //Avatar
      Image(systemName: "person.circle")
         .resizable()
         .aspectRatio(contentMode: .fit)
         .foregroundColor(.blue)
         .frame(width: 125,height: 125)
         .padding()
      //user info(name,email,member since)
      VStack {
         HStack {
            Text("Name: ")
               .font(.title2)
               .foregroundStyle(Color.white)
               .bold()
            Text(user.name)
               .foregroundStyle(Color.white)
               .font(.title3)
         }
         .padding()
         HStack {
            Text("Email: ")
               .bold()
               .font(.title2)
               .foregroundStyle(Color.white)
            Text(user.email)
               .foregroundStyle(Color.white)
               .font(.title3)
         }
         .padding()
         HStack {
            Text("Member since: ")
               .bold()
               .font(.title2)
               .font(.title3)
               .foregroundStyle(Color.white)
            Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
               .foregroundStyle(Color.white)
         }
         .padding()
      }
      .background(Color("bg").ignoresSafeArea(.all,edges: .all))
      .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)

      .padding()
      //Sing out
      Button("Log Out") {
         viewModel.logOut()
      }
      .tint(.white)
      .bold()
      .padding()
      .background(.blue)
      .cornerRadius(15)
      Spacer()
   }
   
}

#Preview {
    ProfileView()
}
