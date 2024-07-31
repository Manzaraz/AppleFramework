//
//  FrameworkDetailView.swift
//  AppleFramework
//
//  Created by Christian Manzaraz on 30/07/2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
//                AFButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
    
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
//            .foregroundStyle(.yellow)
//            .buttonBorderShape(.roundedRectangle(radius: 20))
            .tint(.red)
            
        }
//        .fullScreenCover(isPresented: $isShowingSafariView) { // if you wanna watch it fullscreen
        .sheet(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
        .preferredColorScheme(.dark)
}
