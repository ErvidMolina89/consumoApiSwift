//
//  ViewController.swift
//  ConsumeApi
//
//  Created by Ervid Alfred Molina Barrio - Ceiba Software on 7/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private let connectionManager = ConnectionManager()
    
    var result = drinksModel(drinks: Array<drink>())
    var resultContact = Array<contact>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        connectionManager.setViewDelegate(connectionManagerDelegate: self)
        connectionManager.loadCatalogueElementsDrinks(with: urlDrinks)
//        connectionManager.loadCatalogueElements(with: urlContact)
    }
    
    func configureTableView(){
        let nibName = UINib(nibName: "\(CustomItemCell.self)", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "\(CustomItemCell.self)")
        tableView.reloadData()
    }
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return result.drinks.count
//        resultContact.count
//        result.drinks.count
//        UserModel.getList().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(CustomItemCell.self)", for: indexPath) as? CustomItemCell else{
            return UITableViewCell()
        }
//        let user = UserModel.getList()[indexPath.row]
//        cell.setData(user)
        
        cell.setDataDrinks(widh: result.drinks[indexPath.row])
//        cell.setDataContact(widh: resultContact[indexPath.row])
        cell.accessoryType = .detailButton
        return cell
    }
    
}

extension ViewController : ConnectionManagerDelegate {
    func displayElementsResultDrinks(_ elements: drinksModel?) {
        self.result = elements ?? drinksModel(drinks: Array<drink>())
        self.tableView.reloadData()
    }
    
    func displayElementsResultContacts(_ elements: [contact]?) {
        self.resultContact = elements ?? Array<contact>()
        self.tableView.reloadData()
    }
}
