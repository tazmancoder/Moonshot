//
//  GridLayoutView.swift
//  Moonshot
//
//  Created by Mark Perryman on 5/22/22.
//

import SwiftUI

struct GridLayoutView: View {
    @EnvironmentObject var jsonData: LoadJSONData
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(jsonData.missions) { mission in
                    NavigationLink(destination: MissionDetailView(mission: mission, astronauts: jsonData.astronauts)) {
                        GridRowView(mission: mission)
                    }
                }
            }
            .padding([.horizontal, .bottom])
        }
    }
}

struct GridLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        GridLayoutView()
    }
}
