//
//  FrameworkGridView.swift
//  Apple-FrameWorks
//
//  Created by Ramya K on 15/02/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameWorkGridViewModel()
    
    
    var body: some View {
        NavigationView {
            ScrollView{
                LazyVGrid(columns: viewModel.columns) {
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


