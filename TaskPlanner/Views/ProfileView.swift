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
               .bold()
            Text(user.name)
         }
         .padding()
         HStack {
            Text("Email: ")
               .bold()
            Text(user.email)
         }
         .padding()
         HStack {
            Text("Member since: ")
               .bold()
            Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
         }
         .padding()
      }
      .padding()
      //Sing out
      Button("Log Out") {
         viewModel.logOut()
      }
      .tint(.red)
      .padding()
      Spacer()
   }
}

#Preview {
    ProfileView()
}
