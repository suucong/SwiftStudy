//
//  FrameBasic.swift
//  SwiftUIBasic
//
//  Created by 노수진 on 3/9/24.
//

import SwiftUI

struct FrameBasic: View {
    var body: some View {
        VStack (spacing: 20) {
            // 1
            Text("Hello, World!")
                .font(.title)
                .background(.green)
                .frame(width: 200, height: 200, alignment: .center) // alignment의 기본값은 center
                .background(.red)
            
            Divider()
            
            // 2
            Text("Hello, World!")
                .font(.title)
                .background(.green)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)   // infinity: 최대 길이
                .background(.red)
        }
    }
}

struct FrameBasic2: View {
    var body: some View {
        VStack (spacing: 20) {
            // 1
            Text("Hello, Wolrd")
                .font(.title)
                .background(.red)   // Text에 대한 background
                .frame(height: 100, alignment: .top)
                .background(.orange)    // Frame에 대한 background
                .frame(width: 200)  // height는 100
                .background(.purple)   // 바로 위의 Frame에 대한 background
                .frame(maxWidth: .infinity, alignment: .leading)    // leading: 앞쪽
                .background(.pink)  // width가 infinity인 Framed에 대한 background
                .frame(height: 400)
                .background(.green)
                .frame(maxHeight: .infinity, alignment: .top)
                .background(.yellow)
        }
    }
}

#Preview {
    FrameBasic()
}

#Preview {
    FrameBasic2()
}
