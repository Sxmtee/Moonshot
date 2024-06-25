//
//  SingleScroll.swift
//  Moonshot
//
//  Created by mac on 25/06/2024.
//

import SwiftUI

struct CustomText: View {
    let text: String
    
    var body: some View {
        Text(text)
    }
    
    init(text: String) {
        self.text = text
    }
}

struct SingleScroll: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 10) {
                ForEach(1..<100) {
                    CustomText(text: "item \($0)")
                        .font(.title)
                }
            }
//            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    SingleScroll()
}
