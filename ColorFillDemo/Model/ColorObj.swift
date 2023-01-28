//
//  ColorObj.swift
//  ColorFillDemo
//
//  Created by Marcin Bartminski on 27/01/2023.
//

import SwiftUI

struct ColorObj: Identifiable {
    let colorValue: Color
    
    var symbol: String { getSymbol(colorValue) }
    var name: String { getName(colorValue) }
    
    var id: String { UUID().uuidString }
    
    
    
    private func getSymbol(_ color: Color) -> String {
        switch color {
        case .red:
            return "🔴"
        case .orange:
            return "🟠"
        case .yellow:
            return "🟡"
        case .green:
            return "🟢"
        case .blue:
            return "🔵"
        case .purple:
            return "🟣"
        case .brown:
            return "🟤"
        case .black:
            return "⚫️"
        case .white:
            return "⚪️"
        default:
            return "🤨"
        }
    }
    
    private func getName(_ color: Color) -> String {
        switch color {
        case .red:
            return "red"
        case .orange:
            return "orange"
        case .yellow:
            return "yellow"
        case .green:
            return "green"
        case .blue:
            return "blue"
        case .purple:
            return "purple"
        case .brown:
            return "brown"
        case .black:
            return "black"
        case .white:
            return "white"
        default:
            return "unknown"
        }
    }
}
