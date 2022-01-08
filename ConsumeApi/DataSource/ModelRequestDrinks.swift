//
//  ModelRequest.swift
//  ConsumeApi
//
//  Created by Ervid Alfred Molina Barrio - Ceiba Software on 7/01/22.
//

import Foundation

struct ModelRequestDrinks: APIResource {
    
    typealias ResponseType = drinksModel
    
    var url: URL
    
    init(url: String){
        guard let rutaUrl = URL(string: url) else{
            fatalError()
        }
        self.url = rutaUrl
    }
}
