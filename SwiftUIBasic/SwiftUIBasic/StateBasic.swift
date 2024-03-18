//
//  StateBasic.swift
//  SwiftUIBasic
//
//  Created by 노수진 on 3/18/24.
//

import SwiftUI

struct StateBasic: View {
    // property
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "아직 버튼 안눌림"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            // background layer
            backgroundColor
                .ignoresSafeArea()
            
            // content
            VStack (spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("카운트: \(count)")
                
                HStack (spacing: 20) {
                    Button {
                        // action
                        backgroundColor = .red
                        myTitle = "1번 버튼 눌림"
                        count += 1  // count = count + 1
                    } label: {
                        Text("1번 버튼")
                    }
                    
                    Button {
                        // action
                        backgroundColor = .purple
                        myTitle = "2번 버튼 눌림"
                        count -= 1
                    } label: {
                        Text("2번 버튼")
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    StateBasic()
}
