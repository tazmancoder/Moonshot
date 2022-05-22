//
//  ListLayoutView.swift
//  Moonshot
//
//  Created by Mark Perryman on 5/22/22.
//

import SwiftUI

struct ListLayoutView: View {
    @EnvironmentObject var jsonData: LoadJSONData
    
    var body: some View {
//        LazyVGrid(columns: columns) {
//            ForEach(jsonData.missions) { mission in
//                NavigationLink(destination: MissionDetailView(mission: mission, astronauts: jsonData.astronauts)) {
//                    MissionsRowView(mission: mission)
//                }
//            }
//        }
//        .padding([.horizontal, .bottom])
        List {
            ForEach(jsonData.missions) { mission in
                NavigationLink(destination: MissionDetailView(mission: mission, astronauts: jsonData.astronauts)) {
                    ListLayoutRowView(mission: mission)
                }
            }
        }
    }
}

struct ListLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        ListLayoutView()
    }
}
