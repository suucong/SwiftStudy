//
//  ButtonBasic.swift
//  SwiftUIBasic
//
//  Created by 노수진 on 3/10/24.
//

import SwiftUI

struct ButtonBasic: View {
    
    // property
    @State var mainTitle: String = "아직 버튼 안눌림"
    
    var body: some View {
        VStack (spacing: 20, content: {
            // 리셋 버튼
            Button {
                self.mainTitle = "리셋"
            } label: {
                Text("리셋 버튼")
            }
            
            Divider()
            
            // 라벨
            Text(mainTitle)
                .font(.title)
            
            Divider()
            
            // 1번 버튼
            // action은 button을 눌렀을 때 실행할 event 넣기
            // label은 button 모양을 디자인하기
            Button {
                // action
                self.mainTitle = "기본 버튼 눌림"
            } label: {
                // label
                Text("기본 버튼")
            }
            .accentColor(.red)
            
            Divider()
            
            // 2번 버튼
            Button {
                self.mainTitle = "저장 버튼 눌림"
            } label: {
                Text("저장")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
                
            }
            
            Divider()
            
            // 3번 버튼
            Button {
                self.mainTitle = "하트 버튼 눌림"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    )
            }
            
            Divider()
            
            // 4번 버튼
            Button {
                self.mainTitle = "완료 버튼 눌림"
            } label: {
                Text("완료")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(.gray, lineWidth: 2.5)
                    )
            }
        })
    }
}

#Preview {
    ButtonBasic()
}
