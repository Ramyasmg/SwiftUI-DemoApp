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
    @State var isShowingSafariView: Bool = false
    
    var body: some View {
        VStack {
            XbuttonView(isShowingDetailView: $isShowingDetailView)
            Spacer()
            FrameworkTitleView(frameWork: frameWork)
            Text(frameWork.description)
                .font(.body)
                .padding()
            Spacer()
            Button {
               isShowingSafariView = true
                
            } label: {
                  AFButton(buttonTitle: "Learn More")
            }
        }.fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: frameWork.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameWorkDetailView(frameWork: MockData.sampleFramework, isShowingDetailView: .constant(false), isShowingSafariView: false)
        .preferredColorScheme(.dark)
    
}
