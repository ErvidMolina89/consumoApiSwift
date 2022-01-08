//
//  Parser.swift
//  ConsumeApi
//
//  Created by Ervid Alfred Molina Barrio - Ceiba Software on 7/01/22.
//

import Foundation

protocol ServiceManagerProtocol {
    func executeDrinksAPICall(with url: String,completion: @escaping (drinksModel?) -> Void)
    func executeContactsAPICall(with url: String,completion: @escaping ([contact]?) -> Void)
}

class ServiceManager : ServiceManagerProtocol {
    
    var apiRequestDrinks: ApiRequest<ModelRequestDrinks>?
    var apiRequestContacts: ApiRequest<ModelRequestContact>?
    
    func executeDrinksAPICall(with url: String, completion: @escaping (drinksModel?) -> Void) {
        apiRequestDrinks = ApiRequest(resource: ModelRequestDrinks(url: url))
        apiRequestDrinks?.execute { (items) in
            completion(items)
        }
    }
    func executeContactsAPICall(with url: String, completion: @escaping ([contact]?) -> Void) {
        apiRequestContacts = ApiRequest(resource: ModelRequestContact(url: url))
        apiRequestContacts?.execute { (items) in
            completion(items)
        }
    }
    
}
