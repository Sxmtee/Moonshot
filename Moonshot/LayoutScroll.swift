//
//  LayoutScroll.swift
//  Moonshot
//
//  Created by mac on 25/06/2024.
//

import SwiftUI

struct LayoutScroll: View {
    let layout = [
        GridItem(.adaptive(minimum: 80, maximum: 120))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout) {
                ForEach(0..<1000) {
                    Text("item \($0)")
                }
            }
        }
    }
}

#Preview {
    LayoutScroll()
}
