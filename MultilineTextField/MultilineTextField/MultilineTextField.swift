//
//  MultilineTextField.swift
//  MultilineTextField
//
//  Created by Gerard, Stefan on 03.03.20.
//  Copyright © 2020 StefDev. All rights reserved.
//

import SwiftUI
import UIKit

struct MultilineTextField: UIViewRepresentable {
    
    @Binding var text: String
    
    func makeUIView(context: UIViewRepresentableContext<MultilineTextField>) -> UITextView {
        let textView = UITextView()
        textView.autocorrectionType = .yes
        textView.isEditable = true
        
        textView.layer.borderWidth = 0.5
        textView.layer.borderColor = UIColor.secondaryLabel.cgColor
        
        textView.font = .systemFont(ofSize: 15)
//        textView.translatesAutoresizingMaskIntoConstraints = false
//        textView.sizeToFit()
//        textView.isScrollEnabled = false
        
        var frame = textView.frame
        frame.size.height = textView.contentSize.height
        textView.frame = frame
        
        
        return textView
    }
    
    func updateUIView(_ uiView: UITextView, context: UIViewRepresentableContext<MultilineTextField>) {
        uiView.text = self.text
    }
    
}
