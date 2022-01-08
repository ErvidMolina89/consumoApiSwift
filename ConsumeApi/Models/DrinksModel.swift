//
//  drinksModel.swift
//  ConsumeApi
//
//  Created by Ervid Alfred Molina Barrio - Ceiba Software on 7/01/22.
//
import Foundation

let urlDrinks = "https://www.thecocktaildb.com/api/json/v1/1/search.php?f=a"

struct drinksModel: Codable {
    let drinks: [drink]
}

struct drink: Codable, Equatable {
    let idDrink: String
    let strGlass: String
    let strInstructions: String
    let dateModified: String
}
