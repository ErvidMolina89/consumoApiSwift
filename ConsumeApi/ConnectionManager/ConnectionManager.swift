//
//  ConnectionManager.swift
//  ConsumeApi
//
//  Created by Ervid Alfred Molina Barrio - Ceiba Software on 7/01/22.
//

import Foundation

class ConnectionManager {
    
    weak private var connectionManagerDelegate: ConnectionManagerDelegate?
    private var serviceManager: ServiceManagerProtocol
    
    init(serviceManager: ServiceManagerProtocol = ServiceManager()) {
        self.serviceManager = serviceManager
    }
    
    func setViewDelegate(connectionManagerDelegate: ConnectionManagerDelegate?) {
        self.connectionManagerDelegate = connectionManagerDelegate
    }
    
    func loadCatalogueElementsDrinks(with url: String) {
        serviceManager.executeDrinksAPICall(with: url,
                                                completion: { [weak self] result in
                                                    self?.connectionManagerDelegate?.displayElementsResultDrinks(result)
        })
    }
    
    func loadCatalogueElements(with url: String) {
        serviceManager.executeContactsAPICall(with: url,
                                                completion: { [weak self] result in
                                                    self?.connectionManagerDelegate?.displayElementsResultContacts(result)
        })
    }
}
