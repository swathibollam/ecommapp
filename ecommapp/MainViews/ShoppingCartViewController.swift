//
//  ShoppingCartViewController.swift
//  ecommapp
//
//  Created by chaitanya kumar mynam on 5/11/21.
//

import UIKit

class ShoppingCartViewController: UIViewController {

    // IBOutlets
    @IBOutlet weak var totalPriceLabel: UILabel!
//    @IBOutlet weak var itemsInCartLabel: UILabel!
    @IBOutlet weak var cartTableView: UITableView!
    @IBOutlet weak var checkOutButton: UIButton!
    
    // LifeCycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        cartTableView.tableFooterView = UIView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        calculateItemsInCartAndTotal();
        cartTableView.reloadData()
    }
    
    // IBActions
    @IBAction func checkoutAction(_ sender: UIButton) {
        print("checkout tapped")
    }
    
    private func calculateItemsInCartAndTotal() {
        var totalPrice: Double = 0
        for key in CART_ITEMS.keys {
            totalPrice += ID_TO_ITEM_MAP[key]!.price! * Double(CART_ITEMS[key]!)
        }
        totalPriceLabel.text = convertToCurrency(totalPrice)
//        itemsInCartLabel.text = String(CART_ITEMS.count)
        checkOutButton.setTitle("Proceed to Checkout (\(CART_ITEMS.count) \(CART_ITEMS.count < 2 ? "item" : "items"))", for: .normal)
    }
}

extension ShoppingCartViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CART_ITEMS.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let index = CART_ITEMS.index(CART_ITEMS.startIndex, offsetBy: indexPath.row)
        // Get the key from CART_ITEMS
        let key = CART_ITEMS.keys[index]
        // Get CART_ITEM
        let cartItem = ID_TO_ITEM_MAP[key]
        let cartItemQuantity = CART_ITEMS[key]!
        
        // call generate cell
         let cell = cartTableView.dequeueReusableCell(withIdentifier: "ShoppingCartCell", for: indexPath) as! ShoppingCartTableViewCell
        cell.generateCell(cartItem!, quantity: cartItemQuantity)
        cell.delegate = self
        cell.removelFromCartButton.tag = Int(key)!
        return cell
    }
    
    
}

extension ShoppingCartViewController: CartItemCellDelegate {
    func removeFromCartTapped(tag: Int) {
        
        // Remove item from cart
        CART_ITEMS.removeValue(forKey: String(tag))
        
        // Reload data
        cartTableView.reloadData()
        calculateItemsInCartAndTotal()
        
        // Show item added feedback
        let message = UIAlertController(title: "Item Removed", message: "\n" + (ID_TO_ITEM_MAP[String(tag)]?.name)! + " removed from your shopping cart.", preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .default, handler: { (action) -> Void in
            print("OK tapped")
        })
        
        message.addAction(ok)
        
        self.present(message, animated: true, completion: nil)
    }
    
    
}
