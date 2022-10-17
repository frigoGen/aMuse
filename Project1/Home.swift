//
//  Home.swift
//  Project1
//
//  Created by Marta Michelle Caliendo on 13/10/22.
//Home di prova

import SwiftUI

struct Home: View {
    //quando il valore buleano passa da zero a uno deve cambiare la view
    @State private var showView: Bool = false
    
    var body: some View {
        NavigationStack{
            
            ZStack{
                Color("Color1")
                    .ignoresSafeArea()
                
                
                Image("parquet")
                    .padding(.top, 200)
                    .frame(height: 40)
                    .position(x: 195, y: 600)
                Image("mobile")
                    .padding(.bottom, 420)
                    .frame(height: 30)
                    .position(x: 330, y: 730)
                addButton
                    .position(x: 330, y: 438)
                
                Image("tappeto")
                    .position(x: 196, y: 650)
                //Per mettere l'immagine e il buttom stack a parte
                
                ZStack {
                    ZStack{
                        Image("quadro1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 140)
                           // .position(x: 210, y: 380)
                        addButton
                           }
                    .position(x: 210, y: 356)
                    
              /*      Button {
                        showView.toggle()
                    } label: {
                        Image(systemName: "plus.circle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40)
                        
                    }*/
                }
                .position(x: 80, y: 140)
                ZStack {
                    Image("quadro2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 160)
                    // .position(x: 200, y: 420)
                    addButton
                    
                }
                .position(x: 295, y: 190)
                ZStack{
                    Image("quadro1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 180)
                    // .position(x: 100, y: 300)
                    addButton }
                .position(x: 100, y: 300)
            }
            
            
            .navigationTitle("My Room")
            //per nascondere la toolbar
            .toolbar(.hidden, for: .navigationBar)
            //binding richiede il dollaro per richiamare la variabile
            .navigationDestination(isPresented: $showView) {
                Text("gggg")
                
            }
        }
        
    }
    
}
    struct Home_Previews: PreviewProvider {
        static var previews: some View {
            Home()
        }
    }


extension Home {
    private var addButton: some View {
        Button{
            showView.toggle()
        }
    label: { Image(systemName: "plus.circle")
            .resizable()
            .scaledToFit()
            .frame(width: 40)

        }
    }
}


