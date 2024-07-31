//
//  FrameworkDetailView.swift
//  AppleFramework
//
//  Created by Christian Manzaraz on 30/07/2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        VStack {
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

            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                print("button tapped")
            } label: {
                AFButton(title: "Learn More")
            }

        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, 
                        isShowingDetailView: .constant(false))
        .preferredColorScheme(.dark)
}
