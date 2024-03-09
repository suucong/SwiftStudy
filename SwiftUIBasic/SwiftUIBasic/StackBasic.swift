//
//  StackBasic.swift
//  SwiftUIBasic
//
//  Created by 노수진 on 3/9/24.
//

import SwiftUI

// MARK: - 1. VStack
struct StackBasic: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20, content: {
            Rectangle()
                .fill(.red)
                .frame(width: 200, height: 200)
            
            Rectangle()
                .fill(.green)
                .frame(width: 150, height: 150)
            
            Rectangle()
                .fill(.orange)
                .frame(width: 100, height: 100)
        })
    }
}

// MARK: - 2. HStack
struct StackBasic2: View {
    var body: some View {
        HStack(spacing: 20, content: {
            Rectangle()
                .fill(.red)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(.orange)
                .frame(width: 100, height: 100)
        })
    }
}

// MARK: - 3. ZStack
struct StackBasic3: View {
    var body: some View {
        ZStack(alignment: .topLeading, content: {   // topLeading 정렬을 통해 위쪽으로 차곡차곡 쌓임
            Rectangle()
                .fill(.red)
                .frame(width: 130, height: 130)
            
            Rectangle()
                .fill(.green)
                .frame(width: 120, height: 120)
            
            Rectangle()
                .fill(.orange)
                .frame(width: 100, height: 100)
        })
    }
}

// MARK: - 4. Stack 응용
struct StackBasic4: View {
    var body: some View {
        ZStack(alignment: .top, content: {   // topLeading 정렬을 통해 위쪽으로 차곡차곡 쌓임
            Rectangle()
                .fill(.yellow)
                .frame(width: 350, height: 500)
            
            VStack(alignment: .leading, content: {
                Rectangle()
                    .fill(.red)
                    .frame(width: 150, height: 150)
                
                Rectangle()
                    .fill(.green)
                    .frame(width: 100, height: 100)
                
                HStack(alignment: .bottom, content: {
                    Rectangle()
                        .fill(.purple)
                        .frame(width: 50, height: 50)
                    
                    Rectangle()
                        .fill(.pink)
                        .frame(width: 75, height: 75)
                    
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 25, height: 25)
                })
                .background(.white)
            })
            .background(.black)
        })
    }
}

// MARK: - 5. ZStack vs background
struct StackBasic5: View {
    var body: some View {
        VStack(spacing: 50, content: {
            // ZStack을 사용하여 원 안에 1을 표현 - layer가 복잡할 때 ZStack을 사용하면 좋음
            ZStack(content: {
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            })
            
            // Background를 사용하여 원에 1을 동일하게 표현 - layer가 단순할 경우 추천
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        })
    }
}


#Preview {
    StackBasic()
}

#Preview {
    StackBasic2()
}

#Preview {
    StackBasic3()
}

#Preview {
    StackBasic4()
}

#Preview {
    StackBasic5()
}
