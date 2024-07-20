//
//  JokesData.swift
//  JokesAppSwiftUI
//
//  Created by Mert Öktem on 20.07.2024.
//

import Foundation

struct Welcome: Identifiable, Codable {
    let id = UUID()
    let type: String
    let value: [Value]
}

struct Value: Identifiable, Codable {
    let id: Int
    let joke: String
    let categories: [String]
}
