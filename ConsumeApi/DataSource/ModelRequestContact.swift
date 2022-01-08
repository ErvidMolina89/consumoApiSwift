//
//  ModelRequestContact.swift
//  ConsumeApi
//
//  Created by Ervid Alfred Molina Barrio - Ceiba Software on 8/01/22.
//

import Foundation

struct ModelRequestContact: APIResource {
    
    typealias ResponseType = [contact]
    
    var url: URL
    
    init(url: String){
        guard let rutaUrl = URL(string: url) else{
            fatalError()
        }
        self.url = rutaUrl
    }
}
