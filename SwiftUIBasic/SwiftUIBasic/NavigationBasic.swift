//
//  NavigationBasic.swift
//  SwiftUIBasic
//
//  Created by 노수진 on 3/20/24.
//

import SwiftUI

struct NavigationBasic: View {
    
    // property
    @State var showSheet: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink {
                    // destination: 목적지
                    SecondNavigationView()
                } label: {
                    Text("Second Navigation 이동")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                        .background(.blue)
                        .cornerRadius(10)
                }
            }   // : VStack
            .navigationTitle("페이지 제목")  // 상단에 페이지 제목
            // navigationBarTitleDisplayMode - 상단 페이지 제목 스타일
            // .automatic: 자동, inline - 상단에 작게, large: leading쪽으로 크게
            .navigationBarTitleDisplayMode(.automatic)
            // navigationBarHidden - 네비게이션 타이틀, 바를 감추는 설정
            .navigationBarHidden(false)
            // navigTionBarItems 상단 좌우에 icon, text, button을 사용하여 나타낼 수 있음
            .navigationBarItems(
                leading: Image(systemName: "line.3.horizontal"),
                trailing: Button(action: {
                    showSheet.toggle()
                }, label: {
                    Image(systemName: "gear")
                }))
        }   //  NavigationView
        .sheet(isPresented: $showSheet, content: {
            ZStack {
                
                // background
                Color.cyan.ignoresSafeArea()
                
                // content
                Text("설정 페이지 입니다")
                    .font(.largeTitle)
            }
        })
    }
}

#Preview {
    NavigationBasic()
}
