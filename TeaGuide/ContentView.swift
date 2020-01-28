//
//  ContentView.swift
//  TeaGuide
//
//  Created by Jordan Wall on 2020-01-28.
//  Copyright © 2020 Jordan Wall. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let tea = Bundle.main.decode([TeaSection].self, from: "tea.json")
    
    var body: some View {
        NavigationView{
            List{
                ForEach(tea) { section in
                    Text(section.name)
                    
                    ForEach(section.items) { item in
                        ItemRow(item: item)
                    }
                }
            }
            .navigationBarTitle("Your Teas")
        .listStyle(GroupedListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
