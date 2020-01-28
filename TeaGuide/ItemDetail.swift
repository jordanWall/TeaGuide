//
//  ItemDetail.swift
//  TeaGuide
//
//  Created by Jordan Wall on 2020-01-28.
//  Copyright © 2020 Jordan Wall. All rights reserved.
//

import SwiftUI

struct ItemDetail: View {
    var item: TeaItem
    var body: some View {
        VStack {
            Image(item.mainImage)
            Text(item.ingredients)
                .padding()
            Spacer()
        }
        .navigationBarTitle(Text(item.name), displayMode: .inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ItemDetail(item: TeaItem.example)
        }
    }
}
