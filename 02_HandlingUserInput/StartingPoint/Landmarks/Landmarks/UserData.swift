//
//  UserData.swift
//  Landmarks
//
//  Created by Mark Wong on 23/6/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation
import Combine

final class UserData: ObservableObject {
	var showFavoritesOnly = false
	var landmarks = landmarkData
}
