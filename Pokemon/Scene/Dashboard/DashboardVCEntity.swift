//
//  DashboardVCEntity.swift
//
//  Created by Ricardo Gonzalez on 05/03/24.
//

import Foundation

// MARK: - Welcome
struct Pokemon: Codable {
    let baseExperience: Int
    let height: Int
    let id: Int
    let isDefault: Bool
    let locationAreaEncounters: String
    let name: String
    let order: Int
    let sprites: Sprites
    let types: [TypeElement]
    let weight: Int
    
    enum CodingKeys: String, CodingKey {
        case baseExperience = "base_experience"
        case height
        case id
        case isDefault = "is_default"
        case locationAreaEncounters = "location_area_encounters"
        case name, order
        case sprites, types, weight
    }
}

// MARK: - Sprites
class Sprites: Codable {
    let backDefault: String
    let backFemale: String?
    let backShiny: String
    let backShinyFemale: String?
    let frontDefault: String
    let frontFemale: String?
    let frontShiny: String
    let frontShinyFemale: String?
    let other: Others?
    let animated: Sprites?
    
    enum CodingKeys: String, CodingKey {
        case backDefault = "back_default"
        case backFemale = "back_female"
        case backShiny = "back_shiny"
        case backShinyFemale = "back_shiny_female"
        case frontDefault = "front_default"
        case frontFemale = "front_female"
        case frontShiny = "front_shiny"
        case frontShinyFemale = "front_shiny_female"
        case other
        case animated
    }
}

// MARK: - TypeElement
struct TypeElement: Codable {
    let slot: Int
    let type: Species
}

// MARK: - Species
struct Species: Codable {
    let name: String
}

struct Others: Codable {
    let officialArtwork: OfficialArtwork?
    
    enum CodingKeys: String, CodingKey {
        case officialArtwork = "official-artwork"
    }
}

struct OfficialArtwork: Codable {
    let frontDefault: String?
    
    enum CodingKeys: String, CodingKey {
        case frontDefault = "front_default"
    }
}
