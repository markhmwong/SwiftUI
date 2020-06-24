//
//  RotatedBadgeSymbol.swift
//  Landmarks
//
//  Created by Mark Wong on 24/6/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
	let angle: Angle
	var body: some View {
        BadgeSymbol()
		.padding(-60)
		.rotationEffect(angle, anchor: .bottom)
		
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
		RotatedBadgeSymbol(angle: Angle(degrees: 5.0))
    }
}
