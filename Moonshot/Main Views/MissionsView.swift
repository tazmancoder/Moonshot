//
//  MissionsView.swift
//  Moonshot
//
//  Created by Mark Perryman on 5/22/22.
//

import SwiftUI

struct MissionsView: View {
    @State private var switchToGrid = true

    var body: some View {
        NavigationView {
            Group {
                if switchToGrid {
                    GridLayoutView()
                } else {
                    ListLayoutView()
                }
            }
            .navigationTitle("Moonshot")
            .background(.darkBackGround)
            .preferredColorScheme(.dark)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Menu {
                        Button(action: { switchToGrid = false }, label: {
                            Label("List View", systemImage: "list.bullet.rectangle")
                        })

                        Button(action: { switchToGrid = true }, label: {
                            Label("Grid View", systemImage: "square.grid.2x2")
                        })
                    } label: {
                        Image(systemName: "ellipsis")
                            .font(.body)
                            .foregroundColor(.white)
                    }
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MissionsView()
    }
}
