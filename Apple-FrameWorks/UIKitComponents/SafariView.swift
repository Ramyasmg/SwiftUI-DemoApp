//
//  SafariView.swift
//  Apple-FrameWorks
//
//  Created by Ramya K on 11/03/24.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    
    let url: URL
    
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController  {
        SFSafariViewController(url: url)
    }
    
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
}
