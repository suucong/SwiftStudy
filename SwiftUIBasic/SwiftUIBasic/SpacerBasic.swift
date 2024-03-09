//
//  SpacerBasic.swift
//  SwiftUIBasic
//
//  Created by 노수진 on 3/10/24.
//

import SwiftUI

// MARK: - 1. Spacer 예시
struct SpacerBasic: View {
    var body: some View {
        HStack (spacing: 0, content: {
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(.orange)
            
            Rectangle()
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(.orange)
            
            Rectangle()
                .fill(.red)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(.orange)
            
            Rectangle()
                .fill(.green)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(.orange)
        })
        .background(.yellow)
    }
}

// MARK: - 2. App 상단 설정 닫기 아이콘 만들기
struct SpacerBasic2: View {
    var body: some View {
        VStack {
            HStack (spacing: 0, content: {
                Image(systemName: "xmark")
                
                Spacer()
                
                Image(systemName: "gear")
            })
            .font(.title)
            .padding(.horizontal)
            
            Spacer()
        }
    }
}

#Preview {
    SpacerBasic()
}

#Preview {
    SpacerBasic2()
}
