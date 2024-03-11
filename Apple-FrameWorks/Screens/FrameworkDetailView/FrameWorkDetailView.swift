//
//  FrameWorkDetailView.swift
//  Apple-FrameWorks
//
//  Created by Ramya K on 08/03/24.
//

import SwiftUI

struct FrameWorkDetailView: View {
    var frameWork: Framework
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        VStack {
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
            
            Spacer()
            FrameworkTitleView(frameWork: frameWork)
            Text(frameWork.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                
            } label: {
                  AFButton(buttonTitle: "Learn More")
            }
        }
    }
}

#Preview {
    FrameWorkDetailView(frameWork: MockData.sampleFramework, isShowingDetailView: .constant(false))
        .preferredColorScheme(.dark)
    
}
