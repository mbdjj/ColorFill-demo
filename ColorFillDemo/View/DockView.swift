//
//  DockView.swift
//  ColorFillDemo
//
//  Created by Marcin Bartminski on 27/01/2023.
//

import SwiftUI

struct DockView: View {
    
    let model = DockViewModel()
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .foregroundStyle(.ultraThinMaterial)
            
            HStack {
                Spacer()
                
                ForEach(model.colors) { color in
                    Text(color.symbol)
                        .onDrag {
                            NSItemProvider(object: color.name as NSString)
                        } preview: {
                            Text(color.symbol)
                        }
                    Spacer()
                }
            }
            .padding()
        }
        
        .frame(height: 50)
    }
}

struct DockView_Previews: PreviewProvider {
    static var previews: some View {
        DockView()
            .padding()
    }
}
