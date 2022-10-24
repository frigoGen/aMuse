//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Serena on 20/10/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation
import SwiftUI

struct ItemRow: View {
    var item: Item

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                item.image
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 60)
                    .clipped()
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text("\(item.name), \(item.author)")
                            .font(.headline)
                        .italic()
                    }
                    HStack {
                        Text(item.location)
                            .font(.caption)
                        Spacer()
                        if item.isLocked == true {
                            Button("\(item.price) XP") {
                                // TODO
                                // buy function
                            }
                            .font(.system(size: 18, weight: .bold))
                            .padding(.horizontal, 8)
                            .padding(.vertical, 5)
                            .frame(width: 70)
                            .background(Color("LightGray")
                                .cornerRadius(20))
                            .foregroundColor(Color.accentColor)
                            
                        }
                    }
                }
                
            }
            
            /*
            Divider()
                .padding(.horizontal, 10.0)
                .frame(height: 1.0)
                .background(Color.gray)
             */
            
        }
        .padding(.horizontal, 10.0)
    
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ItemRow(item: items[0])
            ItemRow(item: items[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}

