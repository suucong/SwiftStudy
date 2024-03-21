//
//  ActionSheetBasic.swift
//  SwiftUIBasic
//
//  Created by 노수진 on 3/21/24.
//

import SwiftUI

struct ActionSheetBasic: View {
    
    // property
    @State var showActionSheet: Bool = false
    @State var resultActionSheet: String = ""
    
    var body: some View {
        VStack {
            // show result
            Text(resultActionSheet)
                .font(.largeTitle)
            
            Spacer()
            
            // content
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                
                Text("Jacob Ko")
                
                Spacer()
                
                Button {
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
            }   // : HStack
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)    // 가로세로 비율 정하기
            
            Spacer()
        }   // : VStack
        .actionSheet(isPresented: $showActionSheet, content: {
            // actionSheet 담기는 내용 ActioinSheet Type
            getActionSheet()
        })
    }   // : body
    
    // Function
    func getActionSheet() -> ActionSheet {
        let shareButton: ActionSheet.Button = .default(Text("공유하기")) {
            // action
            resultActionSheet = "공유 되었습니다."
        }
        
        let reportButton: ActionSheet.Button = .default(Text("신고하기")) {
            resultActionSheet = "신고 되었습니다."
        }
        
        let deleteButton: ActionSheet.Button = .destructive(Text("삭제")) {
            resultActionSheet = "삭제 되었습니다."
        }
        
        let cancelButton: ActionSheet.Button = .cancel()
        
        return ActionSheet(
            title: Text("ActionSheet 제목"),
            message: Text("ActionSheet 내용"),
            buttons: [shareButton, reportButton, deleteButton, cancelButton])
    }
}

#Preview {
    ActionSheetBasic()
}
