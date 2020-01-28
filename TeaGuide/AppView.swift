//
//  AppView.swift
//  TeaGuide
//
//  Created by Jordan Wall on 2020-01-28.
//  Copyright © 2020 Jordan Wall. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem {
                    Image(systemName: "text.justify")
                    Text("Your Teas")
            }
            
            QuizView()
                .tabItem {
                    Image(systemName: "questionmark.circle")
                    Text("Quiz")
            }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
