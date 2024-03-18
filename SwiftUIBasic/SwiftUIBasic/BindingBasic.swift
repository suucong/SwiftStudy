//
//  BindingBasic.swift
//  SwiftUIBasic
//
//  Created by 노수진 on 3/18/24.
//

import SwiftUI

struct BindingBasic: View {
    // property
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Binding Basic View"
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea()
            
            // content
            VStack {
                Text(title)
                
                // button
                // parameter로 @State의 값에 $를 붙여준다.
                BindingChild(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

#Preview {
    BindingBasic()
}
