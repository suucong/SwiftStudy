//
//  TransitionBasic.swift
//  SwiftUIBasic
//
//  Created by 노수진 on 3/18/24.
//

import SwiftUI

struct TransitionBasic: View {
    // property
    @State var showTransition: Bool = true
    
    var body: some View {
        ZStack(alignment: .bottom, content: {
            VStack {
                Button {
                    withAnimation(.easeInOut) {
                        showTransition.toggle()
                    }
                } label: {
                    Text("Button")
                }

                Spacer()
                
                if showTransition {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(height: UIScreen.main.bounds.height * 0.5)   // 전체 화면의 절반
                        .opacity(showTransition ? 1.0 : 0.0)
                    
                    // 1번 move transition
//                        .transition(.move(edge: .leading))
                    
                    // 2번 opacity transition
//                        .transition(.opacity)
                    
                    // 3번 scale transition
//                        .transition(.scale)
                    
                    // 4번 asymmetric transition - 시작점 끝지점을 custom하여 정해주기 때문에 비대칭 transition
                        .transition(.asymmetric(
                            insertion: .move(edge: .leading),
                            removal: .move(edge: .trailing)))
                }
            }
            .ignoresSafeArea(edges: .bottom)
        })
    }
}

#Preview {
    TransitionBasic()
}
