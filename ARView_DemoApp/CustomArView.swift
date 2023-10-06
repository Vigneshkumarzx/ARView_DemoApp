//
//  CustomArView.swift
//  ARView_DemoApp
//
//  Created by vignesh kumar c on 06/10/23.
//

import SwiftUI
import ARKit
import RealityKit
import SceneKit


class CustomArView: ARView {
    required init(frame frameRect: CGRect) {
        super.init(frame: frameRect)
    }
    dynamic required init?(coder decoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience required init() {
        self.init(frame: UIScreen.main.bounds)
        
    }
    
    func configurationExample() {
        let configuration = ARWorldTrackingConfiguration()
        session.run(configuration)
        
        let _ = ARGeoTrackingConfiguration()
        let _ = ARFaceTrackingConfiguration()
        let _ = ARBodyTrackingConfiguration()
    }
    
    func anchorExample() {
        let coordinateAnchor = AnchorEntity(world: .zero)
        let _ = AnchorEntity(.plane([.vertical, .horizontal], classification: [.wall, .floor, .ceiling], minimumBounds: [1.0, 1.0]))
       
    }
    
    func entityExample() {
        
    }
    
    func placeBlueBlock() {
        
    }
    
}
