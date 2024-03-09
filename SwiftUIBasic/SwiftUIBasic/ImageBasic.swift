//
//  ImageBasic.swift
//  SwiftUIBasic
//
//  Created by 노수진 on 3/9/24.
//

import SwiftUI

struct ImageBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            Image("nature")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300)
                .cornerRadius(150)  // 원형
            
            Divider()   // 선으로 분리, 자주 사용됨
            
            Image("nature")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300)
                .clipShape(Circle())    // 모양 지정
        }
    }
}

#Preview {
    ImageBasic()
}
