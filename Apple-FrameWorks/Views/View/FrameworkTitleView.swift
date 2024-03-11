//
//  FrameworkTitleView.swift
//  Apple-FrameWorks
//
//  Created by Ramya K on 11/03/24.
//

import SwiftUI


struct FrameworkTitleView: View {
    
    var frameWork: Framework
    
    var body: some View {
        VStack {
            Image(frameWork.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(frameWork.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
            
        }
        .padding()
    }
}

#Preview {
    FrameworkTitleView(frameWork: MockData.sampleFramework)
}
