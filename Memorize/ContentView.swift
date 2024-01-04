//
//  ContentView.swift
//  Memorize
//
//  Created by Iosi Pratama on 04/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView()
            CardView()
            CardView(isOpen: true)
            CardView()
            
        }
        .padding()
    }
}

struct CardView: View {
    
    var isOpen: Bool = false
    
    var body: some View {
        
        if isOpen == false {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(.white)
                    .overlay (
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.black, lineWidth: 2)
                    )
                
                Text("😭")
            }
        } else {
            
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(.black)
            }
            
        }
    }
}



#Preview {
    ContentView()
}
