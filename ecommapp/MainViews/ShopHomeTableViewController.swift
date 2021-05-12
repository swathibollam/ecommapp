//
//  ShopHomeTableViewController.swift
//  ecommapp
//
//  Created by chaitanya kumar mynam on 5/6/21.
//

import UIKit

class ShopHomeTableViewController: UITableViewController {
    
    var cartItems: [String: Int] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
        tableView.tableHeaderView = UIView()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ITEMS_IN_SHOP.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath) as! ShopItemCell

        // Configure the cell...
        cell.generateCell(ITEMS_IN_SHOP[indexPath.row])
        cell.delegate = self;
        cell.addToCartButton.tag = indexPath.row

        return cell
    }
   
}

extension ShopHomeTableViewController: ItemCellDelegate {
    func addToCartTapped(tag: Int) {
        let addedItem = ITEMS_IN_SHOP[tag] as Item
        
        if CART_ITEMS[addedItem.id] == nil {
            CART_ITEMS[addedItem.id] = 1
        } else {
            CART_ITEMS[addedItem.id]! += 1;
        }
    }
}
