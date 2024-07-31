//
//  FrameworkGridViewModel.swift
//  AppleFramework
//
//  Created by Christian Manzaraz on 30/07/2024.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    let columns: [GridItem] = [ GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible()) ]
}
