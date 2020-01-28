//
//  ItemRow.swift
//  TeaGuide
//
//  Created by Jordan Wall on 2020-01-28.
//  Copyright © 2020 Jordan Wall. All rights reserved.
//

import SwiftUI

struct ItemRow: View {
    var item: TeaItem
    
    var body: some View {
        HStack{
            Image(item.thumbnailImage)
            Text(item.name)
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: TeaItem.example)
    }
}
