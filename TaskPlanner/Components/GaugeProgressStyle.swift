//
//  GaugeProgressStyle.swift
//  TaskPlanner
//
//  Created by yusufyakuf on 2023-12-08.
//

import SwiftUI

struct GaugeProgressStyle: ProgressViewStyle {
   var strokeColor = Color.blue
   var strokeWidth = 25.0
   
   func makeBody(configuration: Configuration) -> some View {
      let fractionCompleted = configuration.fractionCompleted ?? 0
      
      return ZStack {
         Circle()
            .trim(from: 0, to: fractionCompleted)
            .stroke(strokeColor, style: StrokeStyle(lineWidth: strokeWidth, lineCap: .round))
            .rotationEffect(.degrees(-90))
      }
   }
}


