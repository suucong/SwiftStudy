//
//  TextBasic.swift
//  SwiftUIBasic
//
//  Created by 노수진 on 3/5/24.
//

import SwiftUI

struct TextBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            // Font 사이즈를 title, vody, footnote 등으로
            // 정하면 기기마다 responsive하게 적용
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.title)   // font 크기
                .fontWeight(.semibold)  // font 굵기
                .bold() // .fontWeight(.bold)
                .underline(true, color: Color.red)  // font 밑줄
                .italic()   // font 기울기
                .strikethrough(true, color: Color.green)    // 글자 가운데 선
            
            Text("Hello, World2".uppercased())  // 문자를 대문자로 변경
                .font(.system(size: 25, weight: .semibold, design: .serif))
            
            Text("멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다.")
                .multilineTextAlignment(.leading)   // 여러줄 텍스트 왼쪽 정렬
                .foregroundColor(.red)  // 글자 색 지정
        }
    }
}

#Preview {
    TextBasic()
}
