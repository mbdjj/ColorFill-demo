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
            return "๐ด"
        case .orange:
            return "๐ "
        case .yellow:
            return "๐ก"
        case .green:
            return "๐ข"
        case .blue:
            return "๐ต"
        case .purple:
            return "๐ฃ"
        case .brown:
            return "๐ค"
        case .black:
            return "โซ๏ธ"
        case .white:
            return "โช๏ธ"
        default:
            return "๐คจ"
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
