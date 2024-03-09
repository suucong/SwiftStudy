//
//  ForEachLoopBasic.swift
//  SwiftUIBasic
//
//  Created by 노수진 on 3/10/24.
//

import SwiftUI

struct ForEachLoopBasic: View {
    
    // 변수 생성
    var data: [String] = ["Hi", "Hello", "Hey everyone"]
    
    var body: some View {
        // MARK: - 1번
        VStack {
            ForEach(0..<10) { index in
                HStack {
                    Circle()
                        .frame(width: 20, height: 20)
                    
                    Text("인덱스 번호 : \(index)번")
                }
            }
            
            Divider()
            
            // MARK: - 2번
            ForEach(data, id: \.self) { item in
                Text(item)
            }
        }
    }
}

#Preview {
    ForEachLoopBasic()
}
