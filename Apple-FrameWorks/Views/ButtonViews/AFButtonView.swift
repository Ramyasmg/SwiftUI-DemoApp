//
//  AFButton.swift
//  Apple-FrameWorks
//
//  Created by Ramya K on 08/03/24.
//

import SwiftUI

struct AFButton: View {
    var buttonTitle: String
    
    var body: some View {
        Text(buttonTitle)
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .frame(width: 290, height: 50)
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
}

#Preview {
    AFButton(buttonTitle: "Text Title")
}
