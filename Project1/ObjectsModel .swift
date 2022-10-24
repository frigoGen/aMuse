//
//  ObjectsModel .swift
//  Project1
//
//  Created by Marta Michelle Caliendo on 19/10/22.
//

import Foundation

struct ObjectsModel : Identifiable {
    let id: String?
    let names: String
    let image: String
    let positionX: CGFloat
    let positionY: CGFloat
    let frame: CGFloat
    let buttonPosition: CGFloat
    
    
    init(id: String?  = UUID().uuidString, names: String, image: String, positionX: CGFloat, positionY: CGFloat, frame: CGFloat, buttonPosition: CGFloat) {
        self.id = id
        self.names = names
        self.image = image
        self.positionX = positionX
        self.positionY = positionY
        self.frame = frame
        self.buttonPosition = buttonPosition
    }
}



