//
//  SecondNavigationView.swift
//  SwiftUIBasic
//
//  Created by 노수진 on 3/20/24.
//

import SwiftUI

struct SecondNavigationView: View {
    
    // property
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ZStack {
                // background
                Color.cyan.ignoresSafeArea()
                
                VStack {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Text("이전 페이지로 이동")
                            .foregroundColor(.cyan)
                            .font(.headline)
                            .background()
                            .padding()
                            .background(.white)
                            .cornerRadius(10)
                    }
                    
                    NavigationLink {
                        // destination
                        ZStack {
                            Color.red.ignoresSafeArea()
                            Text("3번째 페이지입니다.")
                                .font(.largeTitle)
                        }
                    } label: {
                        Text("3번째 페이지로 이동")
                            .foregroundColor(.cyan)
                            .font(.headline)
                            .padding()
                            .background(.white)
                            .cornerRadius(10)
                    }
                }
            }
        }
    }
}

#Preview {
    SecondNavigationView()
}
