//
//  ViewController.swift
//  PairFinder
//
//  Created by Emel Elias on 2021-11-16.
//

import UIKit
import RealityKit
import ARKit

class ViewController: UIViewController {
        
	let arView: ARView = ARView()
	
	let boxScene = try! Experience.loadBox()

    override func viewDidLoad() {
        super.viewDidLoad()
		self.view.autoLayoutAddSubview(childView: arView)
		
		self.view.addConstraintsToFill(childView: arView)
		
		let anchor = AnchorEntity(plane:[.horizontal],
								classification: .any,
								 minimumBounds: [0.2, 0.2])
		
		if let entity = boxScene.steelBox {
			anchor.addChild(entity)
		}

		arView.scene.anchors.append(anchor)


		arView.addCoaching()

     }
}


extension ARView: ARCoachingOverlayViewDelegate {
	func addCoaching() {
		let coachingOverlay = ARCoachingOverlayView()
		coachingOverlay.delegate = self
		#if !targetEnvironment(simulator)
		coachingOverlay.session = self.session
		#endif
		coachingOverlay.autoresizingMask = [.flexibleWidth, .flexibleHeight]
		coachingOverlay.goal = .horizontalPlane
		self.autoLayoutAddSubview(childView: coachingOverlay)
		self.addConstraintsToFill(childView: coachingOverlay)
	}
	
	public func coachingOverlayViewDidDeactivate(_ coachingOverlayView: ARCoachingOverlayView) {
		print("did deactivate")
	}
	
}
