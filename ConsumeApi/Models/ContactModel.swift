//
//  contactModel.swift
//  ConsumeApi
//
//  Created by Ervid Alfred Molina Barrio - Ceiba Software on 7/01/22.
//

import Foundation

let urlContact = "https://jsonplaceholder.typicode.com/users"

struct contact: Codable {
    let id: Int
    let name: String
    let username: String
    let email: String
    let address: addres
    let phone: String
//    let website: String
//    let company: companyObject
}

struct addres: Codable {
    let street: String
    let suite: String
    let city: String
    let zipcode: String
    let geo: geoLocation
}

struct geoLocation: Codable {
    let lat: String
    let lng: String
}

struct companyObject: Codable {
    let name: String
    let catchPhrase: String
    let bs: String
}
