//
//  MissionDetailRowView.swift
//  Moonshot
//
//  Created by Mark Perryman on 5/22/22.
//

import SwiftUI

struct MissionDetailRowView: View {
    var astronaut: Astronaut
    var role: String

    var body: some View {
        HStack {
            Image(astronaut.id)
                .resizable()
                .frame(width: 104, height: 72)
                .clipShape(Capsule())
                .overlay(
                    Capsule()
                        .strokeBorder(.white, lineWidth: 1)
                )

            VStack(alignment: .leading) {
                Text(astronaut.name)
                    .font(.headline)
                    .foregroundColor(.white)

                Text(role)
                    .foregroundColor(.secondary)
            }
        }
        .padding(.horizontal)
    }
}

//struct MissionDetailRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        MissionDetailRowView()
//    }
//}
