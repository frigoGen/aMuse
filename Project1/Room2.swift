//
//  Room2.swift
//  Project1
//
//  Created by Marta Michelle Caliendo on 16/10/22.
//

import SwiftUI

struct Room2: View {
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
                Image("tappeto2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 276)                    .position(x: 197, y: 645)
                ZStack{
                    Image("quadro1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150)
                    // .position(x: 210, y: 380)
                    addButton
                } .position(x: 95, y: 100)
                ZStack{
                    Image("mensola")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 190)
                        .position(x: 285, y: 150)
                    addButton
                        .position(x: 285, y: 110)
                }
                ZStack{
                    Image("mensola")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 190)
                        .position(x: 250, y: 270)
                    addButton
                        .position(x: 252, y: 230)
                }
                ZStack{
                    Image("lavagna")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150)
                        .position(x: 100, y: 450)
                    addButton
                        .position(x: 100, y: 415)
                }
                ZStack{
                    Image("quadro2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 140)
                    // .position(x: 210, y: 380)
                    addButton
                } .position(x: 300, y: 440)
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
}
    struct Room2_Previews: PreviewProvider {
        static var previews: some View {
            Room2()
        }
    }
    extension Room2 {
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
    

