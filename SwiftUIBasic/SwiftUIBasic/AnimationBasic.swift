//
//  AnimationBasic.swift
//  SwiftUIBasic
//
//  Created by 노수진 on 3/18/24.
//

import SwiftUI

// 1번 View
struct AnimationBasic: View {
    // property
    @State var isAnimated: Bool = false
    
    let timing: Double = 5.0
    
    var body: some View {
        // 1번 View
        VStack {
            Button {
                withAnimation(
                    .default
                        // .repeatCount(5)
                        // .repeatForever() // 무한반복
                        .delay(1.0) // 1초 뒤에 작동
                ) {
                    isAnimated.toggle()
                }
            } label: {
                Text("Button: \(isAnimated.description)")
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 0)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
            
            Spacer()
        }
    }
}

// 2번 View - Speed
struct AnimationBasic2: View {
    // property
    @State var isAnimated: Bool = false
    
    let timing: Double = 5.0
    
    var body: some View {
        VStack {
            Button {
                isAnimated.toggle()
            } label: {
                Text("Button")
            }
            
            // linear animation: 처음부터 끝까지 속도가 일정한 애니메이션
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.linear(duration: timing),
                           value: isAnimated)
            
            // easeIn animation: 처음에 느렸다가 끝에 빨라지는 애니메이션
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeIn(duration: timing),
                           value: isAnimated)
            
            // easeOut animation: 처음에 빨랐다가 끝에 느려지는 애니메이션
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeOut(duration: timing),
                           value: isAnimated)
            
            // easeInOut animation: 처음과 끝에 느려지고, 중간 부분이 빠른 애니메이션
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeInOut(duration: timing),
                           value: isAnimated)
        }
    }
}

// 3번 View - Spring animation
struct AnimationBasic3: View {
    // property
    @State var isAnimated: Bool = false
    
    let timing: Double = 5.0
    
    var body: some View {
        VStack {
            Button {
                // response: 단일 진동을 완료하는 데 걸리는 시간
                // damping: 얼마나 빠르게 스프링이 정지하는지에 대한 속도제어. 만약 0이면 영원히 멈추지 않음
                // blendDuration: 다른 애니메이션 간의 전환 길이 제어
                withAnimation(.spring(
                    response: 0.5,
                    dampingFraction: 0.5,   // 0 ~ 1.0
                    blendDuration: 0)) {
                        isAnimated.toggle()
                    }
            } label: {
                Text("Button")
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
        }
    }
}

#Preview {
    AnimationBasic()
}

#Preview {
    AnimationBasic2()
}

#Preview {
    AnimationBasic3()
}
