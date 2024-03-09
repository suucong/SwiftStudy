//
//  GradientBasic.swift
//  SwiftUIBasic
//
//  Created by 노수진 on 3/9/24.
//

import SwiftUI

struct GradientBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            
            // Linear Gradient 선형 그래디언트
            Text("Linear Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    LinearGradient(colors: [Color.red, Color.blue],
                                   startPoint: .topLeading,
                                   endPoint: .bottom)
                )
                .frame(width: 300, height: 200)
            
            // Radial Gradient
            Text("Radial Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    RadialGradient(colors: [Color.yellow, Color.purple],
                                   center: .leading,
                                   startRadius: 5,
                                   endRadius: 300)
                )
                .frame(width: 300, height: 200)
            
            // Angular Gradient 각도 별로 그래디언트 조절
            Text("Angular Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    AngularGradient(
                        gradient: Gradient(colors: [Color.blue, Color.green]),
                        center: .topLeading,
                        angle: .degrees(180 + 45))
                )
                .frame(width: 300, height: 200)
        }
    }
}

#Preview {
    GradientBasic()
}
