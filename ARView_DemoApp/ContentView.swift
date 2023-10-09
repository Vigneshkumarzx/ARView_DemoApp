//
//  ContentView.swift
//  ARView_DemoApp
//
//  Created by vignesh kumar c on 06/10/23.
//

import SwiftUI
import SceneKit

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello scenekit in swiftUI")
            SceneKitView()
                .frame(width: 300, height: 300)
                .background(Color.purple)
        }
    }
}

#Preview {
    ContentView()
}


struct SceneKitView: UIViewRepresentable {
    func makeUIView(context: Context) -> SCNView {
        // Create a new SceneKit view
        let sceneView = SCNView()
        
        // Create a new scene
        let scene = SCNScene()
        
        // Create a box geometry
        let boxGeometry = SCNBox(width: 1.0, height: 1.0, length: 1.0, chamferRadius: 0.0)
        let boxNode = SCNNode(geometry: boxGeometry)
        
        // Add the box node to the scene
        scene.rootNode.addChildNode(boxNode)
        
        // Set the scene to the SceneKit view
        sceneView.scene = scene
        
        return sceneView
    }
    
    func updateUIView(_ uiView: SCNView, context: Context) {
        // Update the SceneKit view if needed
    }
}
