//
//  Landmark.swift
//  Landmarks
//
//  Created by Serena on 20/10/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation
import SwiftUI

struct Item: Hashable, Codable, Identifiable {

    let id: Int
    let name: String
    let author: String
    let location: String
    let description: String
    let curiosity: String
    let price: Int
    
    var isLocked: Bool
    
    // icons
    let iconName1: String
    let iconSymbol1: String
    let iconText1: String
    let iconName2: String
    let iconSymbol2: String
    let iconText2: String
    let iconName3: String
    let iconSymbol3: String
    let iconText3: String
    
    private var imageName: String
    var image: Image{
        Image(imageName)
    }
    
}
