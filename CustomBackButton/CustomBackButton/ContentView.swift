//
//  ContentView.swift
//  CustomBackButton
//
//  Created by Gerard, Stefan on 05.03.20.
//  Copyright © 2020 StefDev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: DestinationView()) {
                    Text("Hello, World!")
                }
                Spacer()
            }
        }
    }
}

private struct DestinationView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack {
            Text("Destination View")
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("Destination View", displayMode: .inline)
        .navigationBarItems(leading: Button(action: {
            self.presentationMode.wrappedValue.dismiss()
            }, label: {
                HStack(spacing: 6) {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 24, weight: .medium))
                    Text("Back")
                }
                .padding(.leading, -8)
        }))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
