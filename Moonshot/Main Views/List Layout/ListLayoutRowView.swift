//
//  ListLayoutRowView.swift
//  Moonshot
//
//  Created by Mark Perryman on 5/22/22.
//

import SwiftUI

struct ListLayoutRowView: View {
    var mission: Mission
    
    var body: some View {
        HStack {
            Image(mission.image)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .padding([.top, .bottom], 5)
                .padding(.horizontal)

            VStack(alignment: .leading) {
                Text(mission.displayName)
                    .font(.headline)
                    .foregroundColor(.white)

                Text(mission.formattedDate)
                    .font(.caption)
                    .foregroundColor(.white.opacity(0.5))
            }
        }
    }
}

//struct ListLayoutRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        ListLayoutRowView()
//    }
//}
