//
//  PaddingBasic.swift
//  SwiftUIBasic
//
//  Created by 노수진 on 3/9/24.
//

import SwiftUI

struct PaddingBasic: View {
    var body: some View {
        VStack(alignment: .leading, content: {
            // MARK: - 1. Padding 기본
            Text("Hello, World!")
                .background(.yellow)
                .padding()  // .padding(.all, 15)   // CSS 기준 padding
                .padding(.leading, 20)  // 위의 패딩을 더해 왼쪽에 20 추가
                .background(.blue)
                .padding(.bottom, 20)   // CSS 기준 margin
            
            Divider()
            
            // MARK: - 2. Padding 응용
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 20)
            
            Text("안녕하세요 헬로우 월드에 오신 여러분 환영합니다. 안녕하세요 헬로우 월드에 오신 여러분 환영합니다. 안녕하세요 헬로우 월드에 오신 여러분 환영합니다.")
        })
        // VStack 범위 밖에서 padding 설정
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: .black.opacity(0.3),
                    radius: 10,
                    x: 10, y: 10)
        )
        .padding()
    }
}

#Preview {
    PaddingBasic()
}
