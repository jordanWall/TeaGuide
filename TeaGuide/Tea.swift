//
//  Menu.swift
//  iDine
//
//  Created by Paul Hudson on 27/06/2019.
//  Copyright © 2019 Hacking with Swift. All rights reserved.
//

import SwiftUI

struct TeaSection: Codable, Identifiable {
    var id: Int
    var name: String
    var items: [TeaItem]
}

struct TeaItem: Codable, Equatable, Identifiable {
    var id: Int
    var name: String
    var caffiene: [String]
    var ingredients: String

    var mainImage: String {
        "donut"
    }

    var thumbnailImage: String {
        "donut"
    }

    #if DEBUG
    static let example = TeaItem(id: 0, name: "Cool Eucalyptus", caffiene: ["N"], ingredients: "Currants, Hibiscus, Spearmint, Juniper berries, Green tea, Blueberries, Eucalyptus, Natural peppermint flavouring, Schizandra berries, Natural (juniper berry, plum) flavouring, Natural wintergreen oil.")
    #endif
}
