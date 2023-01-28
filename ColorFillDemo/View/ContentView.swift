//
//  ContentView.swift
//  ColorFillDemo
//
//  Created by Marcin Bartminski on 27/01/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentColor: UIColor = UIColor.systemBackground
    
    var body: some View {
        ZStack {
            Color(uiColor: currentColor)
                .ignoresSafeArea()
                .onDrop(of: ["public.text"], isTargeted: nil) { providers in
                    if let item = providers.first {
                        item.loadItem(forTypeIdentifier: "public.text") { (text, err) in
                            if let data = text as? Data {
                                let text = String(decoding: data, as: UTF8.self)
                                
                                withAnimation {
                                    self.currentColor = decodeColor(from: text)
                                }
                            }
                        }
                    }
                    
                    return true
                }
            
            VStack {
                Spacer()
                
                DockView()
            }
            .padding()
        }
    }
    
    func decodeColor(from name: String) -> UIColor {
        switch name {
        case "red":
            return UIColor(.red)
        case "orange":
            return UIColor(.orange)
        case "yellow":
            return UIColor(.yellow)
        case "green":
            return UIColor(.green)
        case "blue":
            return UIColor(.blue)
        case "purple":
            return UIColor(.purple)
        case "brown":
            return UIColor(.brown)
        case "black":
            return UIColor(.black)
        case "white":
            return UIColor(.white)
        default:
            return UIColor.systemBackground
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
