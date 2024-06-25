//
//  ContentView.swift
//  Moonshot
//
//  Created by mac on 24/06/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(.cup3)
            .resizable()
            .scaledToFit()
            .containerRelativeFrame(.horizontal) { size, axis in
                size * 0.8
            }
    }
}

#Preview {
    ContentView()
}
