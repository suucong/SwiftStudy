//
//  ShapeBasic.swift
//  SwiftUIBasic
//
//  Created by 노수진 on 3/5/24.
//

import SwiftUI

struct ShapeBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            // MARK: - circle 원형
            Text("원형")
                .font(.title)
            Circle()
//                .fill(Color.blue)
//                .foregroundColor(.pink)
//                .stroke(Color.red, lineWidth: 20)
//                .stroke(Color.purple, style: StrokeStyle(lineWidth: 30, lineCap: .butt, dash: [30]))
                .trim(from: 0.2, to: 1.0)
                .stroke(Color.purple, lineWidth: 50)
                .frame(width: 200, height: 100, alignment: .center)
                .padding()
            
            // MARK: - Ellipse 타원형
            Text("타원형")
                .font(.title)
            Ellipse()
                .fill(Color.green)
                .frame(width: 200, height: 100, alignment: .center)
            
            // MARK: - 캡슐형
            Text("캡슐형")
                .font(.title)
            Capsule(style: .circular)
                .stroke(Color.blue, lineWidth: 30)
                .frame(width: 200, height: 100, alignment: .center)
        }
        
        VStack(spacing: 20) {
            // MARK: - 직사각형
            Text("직사각형")
                .font(.title)
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 100, alignment: .center)
            
            // MARK: - 둥근직사각형
            Text("둥근직사각형")
                .font(.title)
            RoundedRectangle(cornerRadius: 20)
                .trim(from: 0.4, to: 1.0)
                .frame(width: 300, height: 200, alignment: .center)
        }
    }
}

#Preview {
    ShapeBasic()
}
