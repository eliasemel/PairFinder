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
	
	var body: some View {
			NavigationView {
				VStack {
					HStack {
						Spacer()
						Image("quantAppIntroImage").renderingMode(.original)
					}
					Spacer()
					VStack(alignment: .leading) {
						
						
						Text("LET'S FIND A PERFECT PAIR FOR YOU")
							.font(.title)
							.fontWeight(.bold)
							.padding([.vertical], 10.0)
						Text("A 3D foot scan sees your foot beyond the shoe size -- and helps us find you the perfect fit ")
							.font(.callout)
							.padding([.vertical], 10.0)

					}
					.padding()
					Spacer()
					NavigationLink(destination: DetailView()) {
						Text("Click to Scan").padding()
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


