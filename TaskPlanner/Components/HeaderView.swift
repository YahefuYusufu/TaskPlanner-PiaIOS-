//
//  HeaderView.swift
//  TaskPlanner
//
//  Created by yusufyakuf on 2023-12-01.
//

import SwiftUI

struct HeaderView: View {
   let title: String
   let subTitle: String
   let image: String
   
   var body: some View {
      VStack {
         Spacer(minLength: 0)
         Image(image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .cornerRadius(15.0)
         //Dynamic Frame....
            .padding(.horizontal,35)
            .padding(.vertical)
         //            .frame(width: 250)
         
         
         HStack {
            VStack(alignment: .leading,spacing: 12,content: {
               Text(title)
                  .font(.title)
                  .fontWeight(.bold)
                  .foregroundColor(.white)
               
               Text(subTitle)
                  .foregroundColor(Color.white.opacity(0.5))
            })
           
         }
         .padding()
         .padding(.leading,15)
      }
   }
}

#Preview {
   HeaderView(title: "title", subTitle: "subTitle", image: "Image")
}
