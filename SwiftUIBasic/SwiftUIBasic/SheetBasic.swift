//
//  SheetBasic.swift
//  SwiftUIBasic
//
//  Created by 노수진 on 3/20/24.
//

import SwiftUI

struct SheetBasic: View {
    
    // property
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            // Background
            Color.cyan.ignoresSafeArea()
            
            // Content
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.cyan)
                    .font(.headline)
                    .padding()
                    .background(.white)
                    .cornerRadius(10)
            }
            .fullScreenCover(isPresented: $showSheet, content: {
                SheetBasic2()
            })
        }
    }
    
}

#Preview {
    SheetBasic()
}
