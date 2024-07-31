//
//  XDismissButton.swift
//  AppleFramework
//
//  Created by Christian Manzaraz on 31/07/2024.
//

import SwiftUI

struct XDismissButton: View {
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack {
            Spacer()
            
            Button {
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height:  44)
                
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    XDismissButton(isShowingDetailView: .constant(false))
}
