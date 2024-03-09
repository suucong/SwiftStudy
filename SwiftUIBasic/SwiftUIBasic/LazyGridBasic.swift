//
//  LazyGridBasic.swift
//  SwiftUIBasic
//
//  Created by 노수진 on 3/10/24.
//

import SwiftUI

// MARK: - 1. LazyVGrid
struct LazyGridBasic: View {
    // colums의 갯수를 3개로 설정
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]
    
    var body: some View {
        ScrollView {
            // Hero 부분 (위에 사진 부분)
            Rectangle()
                .fill(.orange)
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders]) {
                    // Section1
                    Section(header: Text("Section1")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.blue)
                        .padding()
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .fill(.gray)
                                .frame(height: 150)
                                .overlay(
                                    Text("\(index) 번")
                                )
                        }
                    }   //: Section1
                    
                    // Section2
                    Section(header: Text("Section2")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.red)
                        .padding()
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .fill(.green)
                                .frame(height: 150)
                                .overlay(
                                    Text("\(index) 번")
                                )
                        }
                    }   //: Section1
            }
        }
    }
}

// MARK: - 2. LazyHGrid
struct LazyGridBasic2: View {
    // title을 1000개 변수를 생성
    // ["목록 1", "목록 2", .... "목록 1000"] [Sting]
    let title: [String] = Array(1...1000).map {"목록 \($0)"}
    
    // 화면 그리드 형식으로 채워줌
    let layout: [GridItem] = [
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80))
    ]
    
    var body: some View {
        // LazyHGrid
        // ScrollView horizontal
        ScrollView(.horizontal) {
            LazyHGrid(rows: layout, spacing: 20, content: {
                ForEach(title, id: \.self) { item in
                    VStack {
                        Capsule()
                            .fill(.yellow)
                            .frame(height: 30)
                        
                        Text(item)
                            .foregroundColor(.blue)
                    }
                }
            })
        }
    }
}

#Preview {
    LazyGridBasic()
}

#Preview {
    LazyGridBasic2()
}
