//
//  FrameworkGridView.swift
//  AppleFramework
//
//  Created by Christian Manzaraz on 30/07/2024.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink {
                        FrameworkDetailView(framework: framework,
                                            isShowingDetailView: $viewModel.isShowingDetailView)
                    } label: {
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle(" Frameworks")
            .listStyle(.plain)
        }
        .tint(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}

