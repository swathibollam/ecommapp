//
//  PlaceOrderViewController.swift
//  ecommapp
//
//  Created by chaitanya kumar mynam on 5/12/21.
//

import UIKit

class PlaceOrderViewController: UIViewController {

    @IBOutlet weak var totalPriceLabel: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var taxesLabel: UILabel!
    @IBOutlet weak var orderTotalLabel: UILabel!
    @IBOutlet weak var arrivalEstimateLabel: UILabel!
    @IBOutlet weak var totalWithShippingLabel: UILabel!
    @IBOutlet weak var itemsInCartLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        scrollView.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height+300)
        calculateOrder()
    }
    
    private func calculateOrder() {
        let tomorrow = Calendar.current.date(byAdding: .day, value: 1, to: Date())
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        
        arrivalEstimateLabel.text = "     " + dateFormatter.string(from: tomorrow!) + ": 4:30pm: Via FedEx"
        itemsInCartLabel.text = "Items (" + String(CART_ITEMS.count) + ")"
        var totalPrice: Double = 0
        for key in CART_ITEMS.keys {
            totalPrice += ID_TO_ITEM_MAP[key]!.price! * Double(CART_ITEMS[key]!)
        }
        totalPriceLabel.text = convertToCurrency(totalPrice)
        totalWithShippingLabel.text = convertToCurrency(totalPrice + Double(10.99))
        taxesLabel.text = convertToCurrency(totalPrice * 8.8/100)
        orderTotalLabel.text = convertToCurrency(totalPrice + Double(10.99) + (totalPrice * 8.8/100))
    }
}
