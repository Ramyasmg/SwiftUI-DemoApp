//
//  XbuttonView.swift
//  Apple-FrameWorks
//
//  Created by Ramya K on 11/03/24.
//

import SwiftUI

struct XbuttonView: View {
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack{
            Spacer()
            Button {
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
                
            }
        }.padding()
    }
}

#Preview {
    XbuttonView(isShowingDetailView: .constant(false))
}
