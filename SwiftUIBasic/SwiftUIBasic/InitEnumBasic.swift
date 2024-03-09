//
//  InitEnumBasic.swift
//  SwiftUIBasic
//
//  Created by 노수진 on 3/10/24.
//

import SwiftUI

struct InitEnumBasic: View {
    
    // 변수 선언
    let backgroundColor: Color
    let count: Int
    let title: String
    
    // MARK: - enum 생성
    enum Fruit {
        case apple
        case orange
    }
    
    // MARK: - init 함수 생성
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "사과"
            self.backgroundColor = .red
        } else {
            self.title = "오렌지"
            self.backgroundColor = .orange
        }
    }
    
    var body: some View {
        VStack (spacing: 20, content: {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        })
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    HStack {
        InitEnumBasic(count: 3, fruit: .apple)
        InitEnumBasic(count: 5, fruit: .orange)
    }
}
