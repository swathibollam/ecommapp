//
//  Item.swift
//  ecommapp
//
//  Created by chaitanya kumar mynam on 5/6/21.
//

import Foundation
import UIKit

class Item {
    var id: String!
    var name: String!
    var description: String!
    var price: Double!
    var imageName: String!
    
    init(_id: String, _name: String, _description: String, _price: Double, _imageName: String) {
        self.id = _id
        self.name = _name
        self.description = _description
        self.price = _price
        self.imageName = _imageName
    }
}
