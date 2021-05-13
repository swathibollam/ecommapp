//
//  OrderPlacedThankYouViewController.swift
//  ecommapp
//
//  Created by chaitanya kumar mynam on 5/13/21.
//

import UIKit

class OrderPlacedThankYouViewController: UIViewController {

    @IBOutlet weak var deliveryDateTimeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let tomorrow = Calendar.current.date(byAdding: .day, value: 1, to: Date())
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        
        deliveryDateTimeLabel.text =  dateFormatter.string(from: tomorrow!) + " - 4:30pm"
        // clear the cart
        CART_ITEMS.removeAll()
    }
    
    // Actions
    @IBAction func goToShopHomeAction(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
