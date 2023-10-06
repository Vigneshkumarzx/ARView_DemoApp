//
//  CustomViewRepresentable.swift
//  ARView_DemoApp
//
//  Created by vignesh kumar c on 06/10/23.
//

import Foundation
import SwiftUI


struct CustomViewRepresentable: UIViewRepresentable {
    func makeUIView(context: Context) -> CustomArView {
        return CustomArView()
    }
    
    func updateUIView(_ uiView: CustomArView, context: Context) {
        
    }
}
