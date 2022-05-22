//
//  AstronautDetailsView.swift
//  Moonshot
//
//  Created by Mark Perryman on 5/22/22.
//

import SwiftUI

struct AstronautDetailsView: View {
    let astronaut: Astronaut

    var body: some View {
        ScrollView {
            VStack {
                Image(astronaut.id)
                    .resizable()
                    .scaledToFit()

                VStack(alignment: .leading) {
                    Text("Bio")
                        .font(.title.bold())
                        .padding(.bottom, 5)

                    Text(astronaut.description)
                }
                .padding()
            }
        }
        .background(.darkBackGround)
        .navigationTitle(astronaut.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

//struct AstronautDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        AstronautDetailsView()
//    }
//}
