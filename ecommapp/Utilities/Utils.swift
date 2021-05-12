//
//  Utils.swift
//  ecommapp
//
//  Created by chaitanya kumar mynam on 5/6/21.
//

import Foundation

func convertToCurrency(_ number: Double) -> String {
    
    let currencyFormatter = NumberFormatter()
    currencyFormatter.usesGroupingSeparator = true
    currencyFormatter.numberStyle = .currency
    currencyFormatter.locale = Locale.current
    
    return currencyFormatter.string(from: NSNumber(value: number))!
}

let ITEMS_IN_SHOP: [Item] = [Item(_id: "1", _name: "Camera", _description: "Waterproof Action Camera with Touch Screens", _price: 199, _imageName: "camera"),
                                    Item(_id: "2", _name: "Car Aventador", _description: "Scale Aventadors Car Model, Alloy Wheels", _price: 45, _imageName: "car"),
                                    Item(_id: "3", _name: "Portable Radio", _description: "Vintage Retro Radio with Built in Speakers", _price: 40, _imageName: "electronics"),
                                    Item(_id: "4", _name: "Yorkshire Dress Heels", _description: "Women's Open Toe High Platform High Heels", _price: 19.95, _imageName: "footWaer"),
                                    Item(_id: "5", _name: "Covid 19 Kit", _description: "Self isolation medical kit with vitamins", _price: 49.96, _imageName: "health"),
                                    Item(_id: "6", _name: "Bicycle", _description: "Bike for Toddlers and Kids with Glow Lights", _price: 157.99, _imageName: "hobby"),
                                    Item(_id: "7", _name: "Premium Diamond Necklace", _description: "Pink Diamond Halo in Platinum Rose Gold", _price: 2800, _imageName: "jewelery"),
                                    Item(_id: "8", _name: "Travelers Club Set", _description: "Softside Upright Midtown Hardened Luggage Set", _price: 88.30, _imageName: "luggage"),
                                    Item(_id: "9", _name: "Armani Jacket", _description: "Men's Blazer Premium Stretch Classic Sport Coat", _price: 69.99, _imageName: "menCloth"),
                                    Item(_id: "10", _name: "Kids Pet", _description: "Kids Walking and Barking Puppy Dog Toy Pet", _price: 39.95, _imageName: "pet"),
                                    Item(_id: "11", _name: "Oten Casual Dress", _description: "Casusl Sleeve Pockets Green Flared Swing Dress", _price: 22.99, _imageName: "womenCloth")]

let ID_TO_ITEM_MAP: [String: Item] = ["1": Item(_id: "1", _name: "Camera", _description: "Waterproof Action Camera with Touch Screens", _price: 199, _imageName: "camera"),
                                      "2": Item(_id: "2", _name: "Car Aventador", _description: "Scale Aventadors Car Model, Alloy Wheels", _price: 45, _imageName: "car"),
                                      "3": Item(_id: "3", _name: "Portable Radio", _description: "Vintage Retro Radio with Built in Speakers", _price: 40, _imageName: "electronics"),
                                      "4": Item(_id: "4", _name: "Yorkshire Dress Heels", _description: "Women's Open Toe High Platform High Heels", _price: 19.95, _imageName: "footWaer"),
                                      "5": Item(_id: "5", _name: "Covid 19 Kit", _description: "Self isolation medical kit with vitamins", _price: 49.96, _imageName: "health"),
                                      "6": Item(_id: "6", _name: "Bicycle", _description: "Bike for Toddlers and Kids with Glow Lights", _price: 157.99, _imageName: "hobby"),
                                      "7": Item(_id: "7", _name: "Premium Diamond Necklace", _description: "Pink Diamond Halo in Platinum Rose Gold", _price: 2800, _imageName: "jewelery"),
                                      "8": Item(_id: "8", _name: "Travelers Club Set", _description: "Softside Upright Midtown Hardened Luggage Set", _price: 88.30, _imageName: "luggage"),
                                      "9": Item(_id: "9", _name: "Armani Jacket", _description: "Men's Blazer Premium Stretch Classic Sport Coat", _price: 69.99, _imageName: "menCloth"),
                                      "10": Item(_id: "10", _name: "Kids Pet", _description: "Kids Walking and Barking Puppy Dog Toy Pet", _price: 39.95, _imageName: "pet"),
                                      "11": Item(_id: "11", _name: "Oten Casual Dress", _description: "Casusl Sleeve Pockets Green Flared Swing Dress", _price: 22.99, _imageName: "womenCloth")]

var CART_ITEMS: [String: Int] = [:]
