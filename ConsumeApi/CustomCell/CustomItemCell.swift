//
//  CustomItemCell.swift
//  ConsumeApi
//
//  Created by Ervid Alfred Molina Barrio - Ceiba Software on 7/01/22.
//

import UIKit

class CustomItemCell: UITableViewCell {
    
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var nameCell: UILabel!
    @IBOutlet weak var dateCell: UILabel!
    @IBOutlet weak var descriptionCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setData(_ user: UserModel){
        imageCell.image = UIImage(named: user.profilePic)
        nameCell.text = user.userName
        dateCell.text = user.description
        descriptionCell.text = user.description
    }
    
    func setDataDrinks(widh drink: drink){
        self.imageCell.image = UIImage(named: "isaac-hunt")
        self.nameCell.text = "id: \(drink.idDrink) del nombre: " + drink.strGlass
        self.dateCell.text = drink.dateModified
        self.descriptionCell.text = drink.strInstructions
    }
    
    func setDataContact(widh contact: contact){
        self.imageCell.image = UIImage(named: "isaac-hunt")
        self.nameCell.text = "id: \(contact.id) del nombre: " + contact.name
        self.dateCell.text = contact.phone
        self.descriptionCell.text = contact.email
    }
    
}
