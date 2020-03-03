//
//  ContentView.swift
//  MultilineTextField
//
//  Created by Gerard, Stefan on 03.03.20.
//  Copyright © 2020 StefDev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var text = "Hallo"
    
    var body: some View {
        MultilineTextField(text: $text)
//        Text("Hallo")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
