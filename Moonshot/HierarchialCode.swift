//
//  HierarchialCode.swift
//  Moonshot
//
//  Created by mac on 25/06/2024.
//

import SwiftUI

struct User: Codable {
    let name: String
    let address: Address
}

struct Address: Codable {
    let street: String
    let city: String
}

struct HierarchialCode: View {
    var body: some View {
        Button("Decode JSON") {
            let input = """
            {
                "name": "Taylor Swift"
                "address": {
                    "street": "No 5 Chezoka"
                    "city": "Missouri"
                }
            
            }
            """
            
            let data = Data(input.utf8)
            let decoder = JSONDecoder()
            
            if let user = try? decoder.decode(User.self, from: data) {
                print(user.address.city)
            }
        }
    }
}

#Preview {
    HierarchialCode()
}
