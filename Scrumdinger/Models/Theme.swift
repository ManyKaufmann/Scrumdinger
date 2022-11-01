//
//  Theme.swift
//  Scrumdinger
//
//  Created by Many Kaufmann on 03.10.22.
//
import SwiftUI

enum Theme: String, CaseIterable, Identifiable {
    case purple
    case mint
    case indigo
    case orange
    case pink
    


    var accentColor: Color {
        switch self {
        case .mint, .orange: return .black
        case .indigo, .purple, .pink: return .white
        }
    }
    var mainColor: Color {
        Color(rawValue)
    }
    var name: String {
        rawValue.capitalized
    }
    var id: String {
        name
    }
}

