//
//  Home2.swift
//  Project1
//
//  Created by Marta Michelle Caliendo on 17/10/22.
//

import SwiftUI

struct Home2: View {
    @State private var showView: Bool = false
    var body: some View {
        NavigationStack{
            //usiamo la scrollview per fixare il bug con .ignores....
            ScrollView(.init()) {
                TabView{
                    Home()
                    Room2()
                }
                //modificatore della tabview(capisce da solo il numero di pagine)
                .tabViewStyle(.page)
            }
            //deve stare fuori dallo scroll
            .ignoresSafeArea(edges: .top)
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

struct Home2_Previews: PreviewProvider {
    static var previews: some View {
        Home2()
    }
}
