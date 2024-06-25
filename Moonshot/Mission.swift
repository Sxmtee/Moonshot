//
//  Mission.swift
//  Moonshot
//
//  Created by mac on 25/06/2024.
//

import Foundation

//struct CrewRole: Codable {
//    let name: String
//    let role: String
//}

struct Mission: Codable, Identifiable {
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
    
    var displayName: String {
        "Apollo \(id)"
    }
    
    var image: String {
        "apollo\(id)"
    }
}
