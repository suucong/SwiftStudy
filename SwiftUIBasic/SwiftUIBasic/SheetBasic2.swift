//
//  SheetBasic2.swift
//  SwiftUIBasic
//
//  Created by 노수진 on 3/20/24.
//

import SwiftUI

struct SheetBasic2: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading, content: {
            
            // background
            Color.blue.ignoresSafeArea()
            
            // content
            Button {
                // Sheet 닫기 action
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(.leading)
            }
        })
    } 
    
}

#Preview {
    SheetBasic2()
}
