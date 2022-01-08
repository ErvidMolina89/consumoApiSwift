//
//  ConnectionManagerDelegate.swift
//  ConsumeApi
//
//  Created by Ervid Alfred Molina Barrio - Ceiba Software on 7/01/22.
//

import Foundation

protocol ConnectionManagerDelegate: NSObjectProtocol {
    func displayElementsResultDrinks(_ elements: drinksModel?)
    func displayElementsResultContacts(_ elements: [contact]?)
}
