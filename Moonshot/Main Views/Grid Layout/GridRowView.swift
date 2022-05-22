//
//  GridRowView.swift
//  Moonshot
//
//  Created by Mark Perryman on 5/22/22.
//

import SwiftUI

struct GridRowView: View {
    var mission: Mission
    
    var body: some View {
        VStack {
            Image(mission.image)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding()

            VStack {
                Text(mission.displayName)
                    .font(.headline)
                    .foregroundColor(.white)

                Text(mission.formattedDate)
                    .font(.caption)
                    .foregroundColor(.white.opacity(0.5))
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(.lightBackGround)
        }
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(.lightBackGround)
        )

    }
}

//struct MissionsRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        MissionsRowView()
//    }
//}
