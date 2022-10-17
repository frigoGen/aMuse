//
//  ContentView.swift
//  Project1
//
//  Created by Marta Michelle Caliendo on 13/10/22.
//

import SwiftUI

struct ContentView: View {
    init() {
        let apparence = UITabBarAppearance()
        apparence.configureWithOpaqueBackground()
        UITabBar.appearance().scrollEdgeAppearance = apparence
        //per cambiare colore alla tab bar:
        //UITabBar.appearance().backgroundColor = UIColor(Color.red)
    }
    
    var body: some View {
        TabView{
            Home2()
                .tabItem {
                    Image(systemName: "figure.mixed.cardio")
                    Text("My Room")
                }
            Room2()
                .tabItem {
                    Image(systemName: "tray.full.fill")
                    Text("My Items")
                }
            ThirdView()
                .tabItem {
                    Image(systemName: "questionmark.circle")
                    Text("Quiz")
                }
             
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct FirstView: View {
    var body: some View{
        ZStack{
            Color.black
            .opacity(0.5)
            .ignoresSafeArea(edges: .top)
            Text("First View")
        }
    }
}
struct SecondView: View {
    var body: some View{
        ZStack{
            Color.blue
            .opacity(0.5)
            .ignoresSafeArea(edges: .top)
            Text("Second View")
        }
    }
}
struct ThirdView: View {
    var body: some View{
        ZStack{
            Color.red
            .opacity(0.5)
            .ignoresSafeArea(edges: .top)
            Text("Third View")
        }
    }
           
}


