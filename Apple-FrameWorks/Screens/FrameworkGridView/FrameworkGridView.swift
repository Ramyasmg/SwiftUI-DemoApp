//
//  FrameworkGridView.swift
//  Apple-FrameWorks
//
//  Created by Ramya K on 15/02/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameWorkGridViewModel()
    
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView{
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { frameWork in
                        FrameworkTitleView(frameWork: frameWork)
                            .onTapGesture {
                                viewModel.selectedFrameWork = frameWork
                            }
                    }
                }
            }.navigationTitle("Apple FrameWorks")
                .sheet(isPresented: $viewModel.isShowingDetailView) {
                    FrameWorkDetailView(frameWork: viewModel.selectedFrameWork ?? MockData.sampleFramework, 
                                        isShowingDetailView: $viewModel.isShowingDetailView)
                }
        }
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}


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
