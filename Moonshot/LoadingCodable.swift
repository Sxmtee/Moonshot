//
//  LoadingCodable.swift
//  Moonshot
//
//  Created by mac on 25/06/2024.
//

import SwiftUI

struct LoadingCodable: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let mission: [Mission] = Bundle.main.decode("missions.json")
    
    let column = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid (columns: column) {
                    ForEach(mission) { mission in
                        NavigationLink {
                            Text(mission.displayName)
                        } label: {
                            VStack {
                                Image(mission.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                
                                VStack {
                                    Text(mission.displayName)
                                        .font(.headline)
                                    
                                    Text(mission.formattedLaunchDate)
                                        .font(.caption)
                                }
                                .frame(maxWidth: .infinity)
                            }
                        }
                    }
                }
            }
            .navigationTitle("MoonShot")
        }
    }
}

#Preview {
    LoadingCodable()
}
