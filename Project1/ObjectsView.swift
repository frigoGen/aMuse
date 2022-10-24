//
//  ObjectsView.swift
//  Project1
//
//  Created by Marta Michelle Caliendo on 19/10/22.
//

import SwiftUI

struct ObjectsView: View {
    @Binding var showView: Bool
    @Binding var object: ObjectsModel
    @Binding var selectItem : ObjectsModel?
    // il binding non si inizializza quindi solo con il
    var body: some View {
        GeometryReader { geo in
            ZStack{
                Image(object.image)
                .resizable()
                .scaledToFit()
                .frame(width: object.frame)
                if object.names == "" {
                    addButton
                    //geometry reader legge la geometria dello stack in cui si trova e ti restituisce la dimensione (geo.size...).
                        .position(x: geo.size.width/2, y: geo.size.height / 2 - object.buttonPosition)
                } else {
                    Image(systemName: object.names)
                }
            }
            
        }
        
    }
}
//La view è inizialmente statica, perchè prevede solo dati parametri. Per renderla dinamica bisogna parametrizzarla (in questo caso con il binding), cioè : sostituisci gli elementi all'interno della view di riferimento con quelli dell'arrey.  Crea un nuovo @Binding con il nome del model.
struct ObjectsView_Previews: PreviewProvider {
    static var previews: some View {
        ObjectsView(showView: .constant(false), object: .constant(ObjectsModel(names: "", image: "quadro1", positionX: 30, positionY: 30, frame: 140, buttonPosition: 40)), selectItem: .constant(ObjectsModel(names: "", image: "quadro1", positionX: 30, positionY: 30, frame: 140, buttonPosition: 40)))
    }
}
extension ObjectsView {
    private var addButton: some View {
        Button{
            selectItem = object //diamo il valore a selectItem dell'oggetto, altrimenti assumerebbe che il valore è nullo
            showView.toggle()
        }
    label: { Image(systemName: "plus.circle")
            .resizable()
            .scaledToFit()
            .frame(width: 40)

        }
    }
}
