//
//  BindingChild.swift
//  SwiftUIBasic
//
//  Created by 노수진 on 3/18/24.
//

import SwiftUI

struct BindingChild: View {
    // property
    @State var buttonColor: Color = Color.blue
    @Binding var backgroundColor: Color
    @Binding var title: String
    
    var body: some View {
        Button {
            // action
            backgroundColor = .orange
            buttonColor = .pink
            title = "Binding Child View"
        } label: {
            Text("Child View 이동")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    BindingChild(backgroundColor: .constant(Color.cyan),
                 title: .constant("Binding Child"))
}
