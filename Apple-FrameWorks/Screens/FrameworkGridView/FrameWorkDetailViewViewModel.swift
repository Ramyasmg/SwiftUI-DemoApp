//
//  FrameWorkDetailViewViewModel.swift
//  Apple-FrameWorks
//
//  Created by Ramya K on 10/03/24.
//

import SwiftUI

final class FrameWorkGridViewModel: ObservableObject {
    
    var selectedFrameWork: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
     
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
}
