//
//  IconBasic.swift
//  SwiftUIBasic
//
//  Created by 노수진 on 3/9/24.
//

import SwiftUI

struct IconBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.fill.badge.plus")
                .resizable()
                // rendermode에서 original로 하게되면 실제 color에서 multi color로 변경
                // 즉 고유 값 컬러로 변경되어서 다른 color로 변경하더라도 변경되지 않는 color 값이 된다.
                .renderingMode(.original)
                // 부모 인자의 사이즈에 맞춰지게됨. Fit은 가로 길이에 맞춰짐.
                .scaledToFill()
                .foregroundColor(.red)
                .frame(width: 300, height: 300) // scaleToFill을 통해 프레임의 크기에 맞게 아이콘이 채워짐.
        }
    }
}

#Preview {
    IconBasic()
}
