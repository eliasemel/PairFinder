//
//  ARView+Extension.swift
//  PairFinder
//
//  Created by Emel Elias on 2021-11-17.
//

import Foundation
import ARKit
import RealityKit

extension ARView: ARCoachingOverlayViewDelegate {
	
	func addCoaching() {
		#if !targetEnvironment(simulator)
		let coachingOverlay = ARCoachingOverlayView()
		coachingOverlay.delegate = self
		#if !targetEnvironment(simulator)
		coachingOverlay.session = self.session
		#endif
		coachingOverlay.autoresizingMask = [.flexibleWidth, .flexibleHeight]
		coachingOverlay.goal = .horizontalPlane
		self.autoLayoutAddSubview(childView: coachingOverlay)
		self.addConstraintsToFill(childView: coachingOverlay)
		#endif
	}
	
	public func coachingOverlayViewDidDeactivate(_ coachingOverlayView: ARCoachingOverlayView) {
		print("did deactivate")
	}
	
}
