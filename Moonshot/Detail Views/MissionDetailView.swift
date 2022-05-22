//
//  MissionDetailView.swift
//  Moonshot
//
//  Created by Mark Perryman on 5/22/22.
//

import SwiftUI

struct MissionDetailView: View {
    struct CrewMember {
        let role: String
        let astronaut: Astronaut
    }

    let mission: Mission

    let crew: [CrewMember]

    init(mission: Mission, astronauts: [String: Astronaut]) {
        self.mission = mission

        self.crew = mission.crew.map { member in
            if let astronaut = astronauts[member.name] {
                return CrewMember(role: member.role, astronaut: astronaut)
            } else {
                fatalError("Missing \(member.name)")
            }
        }
    }

    var body: some View {
        GeometryReader { geo in
            ScrollView {
                VStack {
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: geo.size.width * 0.6)
                        .padding(.top)

                    Text(mission.formattedDate)
                        .font(.title3)
                        .foregroundColor(.white.opacity(0.5))
                        .padding()

                    VStack(alignment: .leading) {
                        DividerView()

                        Text("Mission Highlights")
                            .font(.title.bold())
                            .padding(.bottom, 5)

                        Text(mission.description)

                        DividerView()

                        Text("Crew")
                            .font(.title.bold())
                            .padding(.bottom, 5)
                    }
                    .padding(.horizontal)

                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(crew, id: \.role) { crewmember in
                                NavigationLink(destination: AstronautDetailsView(astronaut: crewmember.astronaut)) {
                                    MissionDetailRowView(astronaut: crewmember.astronaut, role: crewmember.role)
                                }
                            }
                        }
                    }
                }
                .padding(.bottom)
            }
        }
        .navigationTitle(mission.displayName)
        .navigationBarTitleDisplayMode(.inline)
        .navigationViewStyle(.stack)
        .background(.darkBackGround)
    }
}

//struct MissionDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        MissionDetailView()
//    }
//}
