//
//  NavigationRouter.swift
//  Moonshot
//
//  Created by mac on 25/06/2024.
//

import SwiftUI

struct NavigationRouter: View {
    var body: some View {
        NavigationStack {
            List {
                ForEach(0..<10) { row in
                    NavigationLink ("Row \(row)") {
                        Text("Details \(row)")
                    }
                }
            }
//            NavigationLink {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            } label: {
//                VStack {
//                    Text("Please")
//                    Text("Always tap me")
//                    Image(systemName: "face.smiling")
//                }
//            }
            .navigationTitle("SwiftUI")
        }
    }
}

#Preview {
    NavigationRouter()
}
