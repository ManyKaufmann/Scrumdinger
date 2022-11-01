//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Many Kaufmann on 03.10.22.
//
import Foundation


struct DailyScrum: Identifiable {
    let id: UUID
    var title: String
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees.map { Attendee(name: $0, role: $0) }
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
    
    mutating func update(from data: Data) {
            title = data.title
            attendees = data.attendees
            lengthInMinutes = Int(data.lengthInMinutes)
            theme = data.theme
        }

}

extension DailyScrum {
    struct Attendee: Identifiable {
        let id: UUID
        var name: String
        var role: String
        
        init(id: UUID = UUID(), name: String, role: String) {
            self.id = id
            self.name = name
            self.role = role
        }
    }
    

struct Data {
    var title: String = ""
    var attendees: [Attendee] = []
    var lengthInMinutes: Double = 5
    var theme: Theme = .mint
}
    
    var data: Data {
        Data(title: title, attendees: attendees, lengthInMinutes: Double(lengthInMinutes), theme: theme)
    }
}

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Dreipol", attendees: ["Dennis", "Manuel", "Anja"], lengthInMinutes: 15, theme: .mint),
        DailyScrum(title: "Frontend", attendees: ["Simon", "Matt", "Tobias"], lengthInMinutes: 10, theme: .indigo),
        DailyScrum(title: "Backend", attendees: ["Simon", "Christian", "Andreas"], lengthInMinutes: 15, theme: .purple)
    
    ]
}

