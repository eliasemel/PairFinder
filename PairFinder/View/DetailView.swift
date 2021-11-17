//
//  DetailView.swift
//  PairFinder
//
//  Created by Emel Elias on 2021-11-17.
//

import Foundation
import UIKit
import SwiftUI
import RealityKit
import ARKit


struct DetailView: View {
	var body: some View {
		ARViewContainer()
			.frame(
				minWidth: 0.0,
				maxWidth: .infinity,
				minHeight: 0.0,
				maxHeight: .infinity)
	}
}


struct ARViewContainer: UIViewRepresentable {
	
	let boxScene = try! Experience.loadBox()

	func makeUIView(context: Context) -> ARView {
		let arView = ARView(frame: .zero)
		arView.addCoaching()
		return arView
	}
	func updateUIView(_ arView: ARView, context: Context) {
		
		#if !targetEnvironment(simulator)
		let anchor = AnchorEntity(plane:[.horizontal],
								classification: .any,
								 minimumBounds: [0.2, 0.2])
		
		for entity in boxScene.legEntities {
			anchor.addChild(entity)
		}

		arView.scene.anchors.append(anchor)
		#endif
	}
}
