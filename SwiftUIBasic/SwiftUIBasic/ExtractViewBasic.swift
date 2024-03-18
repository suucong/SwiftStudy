//
//  ExtractViewBasic.swift
//  SwiftUIBasic
//
//  Created by 노수진 on 3/18/24.
//

import SwiftUI

struct ExtractViewBasic: View {
    // property
    @State var backgroundColor: Color = Color.pink
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea()
            
            // content
            contentLayer
        }
    }
    
    // content
    var contentLayer: some View {
        VStack {
            Text("Extract View 연습")
                .font(.largeTitle)
            
            Button {
                buttonPressed()
            } label: {
                Text("바탕색 변경")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
            }
        }
    }
    
    // function
    func buttonPressed() {
        backgroundColor = .yellow
    }
}

#Preview {
    ExtractViewBasic()
}
