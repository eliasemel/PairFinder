//
//  StartView.swift
//  PairFinder
//
//  Created by Emel Elias on 2021-11-17.
//

import Foundation
import SwiftUI
import ARKit
import RealityKit

struct StartView: View {
	
	struct Constants {
		static let logoImage = "quantAppIntroImage"
		static let titleText = "LET'S FIND A PERFECT PAIR FOR YOU"
		static let infoText = "A 3D foot scan sees your foot beyond the shoe size -- and helps us find you the perfect fit "
		static let buttonClick = "Click to Scan"
	}
	
	var body: some View {
			NavigationView {
				VStack {
					HStack {
						Spacer()
						Image(Constants.logoImage).renderingMode(.original)
					}
					Spacer()
					VStack(alignment: .leading) {
						
						
						Text(Constants.titleText)
							.font(.title)
							.fontWeight(.bold)
							.padding([.vertical], 10.0)
						Text(Constants.infoText)
							.font(.callout)
							.padding([.vertical], 10.0)

					}
					.padding()
					Spacer()
					NavigationLink(destination: DetailView()) {
						Text(Constants.buttonClick).padding()
					}
					.foregroundColor(.white)
					.background(.black)
					.cornerRadius(20.0)

				}
				.foregroundColor(.black)
				.background(Color.white)

			}
		}
	
}

struct StartView_Previews: PreviewProvider {
	static var previews: some View {
		StartView()
		    
			.previewLayout(PreviewLayout.sizeThatFits)
			.padding()
			.previewDisplayName("Default preview")
	}
}


