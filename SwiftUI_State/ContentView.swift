//
//  ContentView.swift
//  SwiftUI_State
//
//  Created by Luc Derosne on 02/12/2019.
//  Copyright © 2019 Luc Derosne. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isDayOn = false
    
    var body: some View {
        Button(action: {
            self.isDayOn.toggle()
            // Bascule de l'état  Night et Day
        }) {
            Image(systemName: isDayOn ? "sun.max.fill" : "moon.stars.fill")
                .font(.system(size: 200))
                .foregroundColor(isDayOn ? .yellow : .gray)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
