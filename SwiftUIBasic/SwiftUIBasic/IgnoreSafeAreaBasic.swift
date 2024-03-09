//
//  IgnoreSafeAreaBasic.swift
//  SwiftUIBasic
//
//  Created by 노수진 on 3/10/24.
//

import SwiftUI

struct IgnoreSafeAreaBasic: View {
    var body: some View {
        ZStack {
            // background
            Color.blue
                .ignoresSafeArea()
            
            // content
            VStack {
                Text("Hello, World!")
                    .font(.largeTitle)
            }
        }
    }
}

struct IgnoreSafeAreaBasic2: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("박스형 리스트")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity)
                
                ForEach(1..<11) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding()
                        .overlay(
                            Text("\(index)번 리스트")
                        )
                }
            }
        }
        .background(.yellow)
        .ignoresSafeArea()
    }
}

#Preview {
    IgnoreSafeAreaBasic()
}

#Preview {
    IgnoreSafeAreaBasic2()
}
