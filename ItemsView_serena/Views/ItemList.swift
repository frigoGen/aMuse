//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Serena on 20/10/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation
import SwiftUI

class ArrayFilteredItems: ObservableObject {
    @Published var dataArray: [Item] = []
    @Published var filteredArray: [Item] = []
    
    init() {
        for item in items {
            dataArray.append(item)
            filteredArray.append(item)
        }
        // updateFilteredArray()
    }
    
    func updateFilteredArray() {
        /*
        filteredArray = dataArray.filter({ (item) -> Bool in
            return !item.isLocked
        })
        */
        
        filteredArray = filteredArray.filter({ !$0.isLocked })
    }
}

struct ItemList: View {
    @State private var isFiltered: Bool = false
    
    @StateObject var array = ArrayFilteredItems()
    // var filteredItems: [Item]
    
    var body: some View {
        NavigationView {
            
            VStack {
                
                // TODO: XP should be dynamic (maybe from a class)
                Text("XP: 20 \(Image(systemName: "trophy"))")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                List(array.filteredArray) { item in
                    NavigationLink {
                        ItemDetail(item: item)
                    } label: {
                        ItemRow(item: item)
                    }
                    // .buttonStyle() link/arrow on the right?
                }
                .listStyle(.plain)
                .navigationTitle("My Items")
                .toolbar {
                    Button(isFiltered ? "\(Image(systemName: "line.3.horizontal.decrease.circle.fill"))" : "\(Image(systemName: "line.3.horizontal.decrease.circle"))") {
                        isFiltered.toggle()
                        
                        if isFiltered {
                            array.updateFilteredArray()
                        } else {
                            array.filteredArray = array.dataArray
                        }
                    }
                   
                }
            }
            
        }
    }
}

struct ItemList_Previews: PreviewProvider {
    static var previews: some View {
        ItemList()
    }
}
