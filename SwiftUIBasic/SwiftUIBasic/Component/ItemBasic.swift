//
//  ItemBasic.swift
//  SwiftUIBasic
//
//  Created by 노수진 on 3/18/24.
//

import SwiftUI

struct ItemBasic: View {
    // property
    var title: String
    var count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ItemBasic(title: "사과", count: 1, color: .red)
}
