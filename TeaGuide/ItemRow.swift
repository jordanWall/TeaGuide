//
//  ItemRow.swift
//  TeaGuide
//
//  Created by Jordan Wall on 2020-01-28.
//  Copyright © 2020 Jordan Wall. All rights reserved.
//

import SwiftUI

struct ItemRow: View {
    static let colours: [String: Color] = ["N": .black, "L": .green, "M": .yellow, "H": .red]
    var item: TeaItem
    
    var body: some View {
        NavigationLink(destination: ItemDetail(item: item)) {
            HStack{
                Image(item.thumbnailImage)
                Text(item.name)
                    .font(.headline)
                
                Spacer()
                ForEach(item.caffiene, id: \.self) { caffiene in
                    Text(caffiene)
                        .font(.caption)
                        .fontWeight(.black)
                        .padding(7)
                        .background(Self.colours[caffiene, default: .black])
                        .clipShape(Circle())
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: TeaItem.example)
    }
}
