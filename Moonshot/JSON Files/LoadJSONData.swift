//
//  LoadJSONData.swift
//  Moonshot
//
//  Created by Mark Perryman on 5/22/22.
//

import Foundation

class LoadJSONData: ObservableObject {
    @Published var astronauts = [String: Astronaut]()
    @Published var missions = [Mission]()

    init() {
        astronauts = Bundle.main.decode(from: "astronauts.json")
        missions = Bundle.main.decode(from: "missions.json")
    }
}
