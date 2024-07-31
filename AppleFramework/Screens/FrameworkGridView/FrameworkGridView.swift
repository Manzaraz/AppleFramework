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
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework) {
                            FrameworkTitleView(framework: framework)
                        }             
                    }
                }
            }
            .navigationTitle(" Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework)
            }
            
        }
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}

