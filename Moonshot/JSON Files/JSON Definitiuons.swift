//
//  Astronaut.swift
//  Moonshot
//
//  Created by Mark Perryman on 5/22/22.
//

import Foundation

struct Astronaut: Identifiable, Codable {
    let id: String
    let name: String
    let description: String
}

struct Mission: Identifiable, Codable {
    struct CrewRole: Codable {
        let name: String
        let role: String
    }

    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String

    var displayName: String {
        "Apollo\(id)"
    }

    var image: String {
        "apollo\(id)"
    }

    var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "y-MM-dd"

        if let launchDate = launchDate {
            if let newDate = formatter.date(from: launchDate) {
// These two lines are now condensed down into one line
//                formatter.dateStyle = .medium
//                return formatter.string(from: newDate)
                return newDate.formatted(date: .abbreviated, time: .omitted)
            }
        }
        return "N/A"
    }
}
