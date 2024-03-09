//
//  ColorBasic.swift
//  SwiftUIBasic
//
//  Created by 노수진 on 3/9/24.
//

import SwiftUI

struct ColorBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            
            // Basic Color
            Text("Basic Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.purple)
                .frame(width: 300, height: 100)
            
            // Primary Color
            // 자동으로 색 다크 지원
            Text("Primary Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.primary)
                .frame(width: 300, height: 100)
            
            // UIColor
            // UIKit에서 사용되는 color 값을 사용할 수 있습니다.
            Text("UI Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color(UIColor.secondarySystemBackground))
                .frame(width: 300, height: 100)
            
            // Custom Color
            // 실제로 가장 많이 사용
            Text("Custom Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color("CustomColor"))
                .frame(width: 300, height: 100)
        }
    }
}

#Preview {
    ColorBasic()
//        .preferredColorScheme(.dark)  // 기본 테마 색 지정
}
