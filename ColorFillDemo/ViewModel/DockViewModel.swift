//
//  DockViewModel.swift
//  ColorFillDemo
//
//  Created by Marcin Bartminski on 27/01/2023.
//

import SwiftUI

struct DockViewModel {
    
    let allSupportedColors: [Color] = [.red, .orange, .yellow, .green, .blue, .purple, .brown, .black, .white]
    
    let colors: [ColorObj]
    
    init() {
        colors = allSupportedColors.map { ColorObj(colorValue: $0) }
    }
    
}
