//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Many Kaufmann on 03.10.22.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
