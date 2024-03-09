//
//  ScrollViewBasic.swift
//  SwiftUIBasic
//
//  Created by 노수진 on 3/10/24.
//

import SwiftUI

// MARK: - 1. 세로 스크롤
struct ScrollViewBasic: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack {
                ForEach(0..<50) { index in
                    Rectangle()
                        .fill(.blue)
                        .frame(height: 300)
                        .overlay(
                            Text("\(index) 번")
                                .font(.title)
                        )
                }
            }
        }
    }
}

// MARK: - 2. 가로 스크롤
struct ScrollViewBasic2: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            HStack {
                ForEach(0..<50) { index in
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 300,height: 300)
                        .overlay(
                            Text("\(index) 번")
                                .font(.title)
                        )
                }
            }
        }
    }
}

// MARK: - 3. 혼합
struct ScrollViewBasic3: View {
    var body: some View {
        ScrollView {    // 기본이 .vertical, showIndicaters도 true
            LazyVStack {
                ForEach(0..<10) { _ in
                    ScrollView(.horizontal,
                               showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<20) { _ in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewBasic()
}

#Preview {
    ScrollViewBasic2()
}

#Preview {
    ScrollViewBasic3()
}

