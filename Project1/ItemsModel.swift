//
//  ItemsModel.swift
//  Project1
//
//  Created by Marta Michelle Caliendo on 17/10/22.
//

import Foundation


//model degli oggetti/ serve a costruire l'array di oggetti

//Identifiable è un protocol per fornire un id a ogni oggetto
struct ItemsModel: Identifiable {
    let id: String = UUID().uuidString   //questa funzione genera un id diverso per ogni oggetto e in questo caso lo restituisce come stringa
    let title: String
    let subtitle: String
    let image: String
    let isUnlocked: Bool
    
    init(title: String, subtitle: String, image: String, isUnlocked: Bool) {
        self.title = title
        self.subtitle = subtitle
        self.image = image
        self.isUnlocked = isUnlocked
    }
    
    }
