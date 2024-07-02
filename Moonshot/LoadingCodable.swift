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
    
    @State private var isShowingGrid = true
    
    var body: some View {
        NavigationStack {
            ScrollView {
                if isShowingGrid {
                    LazyVGrid (columns: column) {
                        ForEach(mission) { mission in
                            NavigationLink {
                                MissionView(mission: mission, astronaut: astronauts )
                            } label: {
                                VStack {
                                    Image(mission.image)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 100, height: 100)
                                        .padding()
                                    
                                    VStack {
                                        Text(mission.displayName)
                                            .font(.headline)
                                            .foregroundStyle(.white)
                                        
                                        Text(mission.formattedLaunchDate)
                                            .font(.caption)
                                    }
                                    .padding(.vertical)
                                    .frame(maxWidth: .infinity)
                                    .background(.lightBackground)
                                }
                                .clipShape(.rect(cornerRadius: 10))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(.lightBackground)
                                )
                            }
                        }
                    }
                    .padding([.horizontal, .vertical])
                } else {
                    VStack {
                        ForEach(mission) { mission in
                            NavigationLink {
                                MissionView(mission: mission, astronaut: astronauts )
                            } label: {
                                VStack {
                                    Image(mission.image)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 100, height: 100)
                                        .padding()
                                    
                                    VStack {
                                        Text(mission.displayName)
                                            .font(.headline)
                                            .foregroundStyle(.white)
                                        
                                        Text(mission.formattedLaunchDate)
                                            .font(.caption)
                                    }
                                    .padding(.vertical)
                                    .frame(maxWidth: .infinity)
                                    .background(.lightBackground)
                                }
                                .clipShape(.rect(cornerRadius: 10))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(.lightBackground)
                                )
                            }
                        }
                    }
                    .padding([.horizontal, .vertical])
                }
            }
            .navigationTitle("MoonShot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbar {
                Button(action: {
                    isShowingGrid.toggle()
                                }) {
                                    Image(systemName: isShowingGrid ? "square.grid.2x2" : "list.dash")
                                }
                            
                        }
        }
    }
}

#Preview {
    LoadingCodable()
}
