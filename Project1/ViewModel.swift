//
//  ViewModel.swift
//  Project1
//
//  Created by Marta Michelle Caliendo on 22/10/22.
//

import Foundation


 
class ViewModel : ObservableObject { //ci dobbiamo mettere dentro tutta la logica (proprietà e metodi) che poi vanno richiamati nelle altre view
    
//il protocollo dell'osrv richiede che le proprietà all'interno delle view siano dichiarate come @published, cioè wrappers che permette di osservare le variabili delle view
    
@Published var selectObject : ObjectsModel? = nil // per inizializzare una viariabile che può esistere come no, si scrive così: 
@Published var objects: [ObjectsModel] = [
        
        ObjectsModel(names: "", image: "quadro1", positionX: 85 , positionY:  145, frame: 140, buttonPosition: 0),
        ObjectsModel(names: "", image: "quadro2", positionX: 295, positionY:  190, frame: 160, buttonPosition: 0),
        ObjectsModel(names: "", image: "quadro1", positionX: 100, positionY: 320, frame: 180, buttonPosition: 0),
        ObjectsModel(names: "", image: "mobile", positionX: 330, positionY:  508, frame: 95, buttonPosition: 100)
    ]
    
    //la prima cosa da mettere dentro è questo
    
}
