//
//  ShoppingCartTableViewCell.swift
//  ecommapp
//
//  Created by chaitanya kumar mynam on 5/11/21.
//

import UIKit

// declare item cell delegate
protocol CartItemCellDelegate: class {
    func removeFromCartTapped(tag: Int)
}

class ShoppingCartTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var removelFromCartButton: UIButton!
    @IBOutlet weak var itemImageView: UIImageView!
    
    
    weak var delegate: CartItemCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    @IBAction func removeFromCartTapped(_ sender: UIButton) {
        delegate?.removeFromCartTapped(tag: sender.tag)
    }
    
    func generateCell(_ item: Item, quantity: Int) {
        nameLabel.text = item.name + " (\(quantity) * \(convertToCurrency(item.price)))"
        nameLabel.adjustsFontSizeToFitWidth = true
        descLabel.text = item.description
        self.itemImageView.image = UIImage(named: item.imageName)
    }
}
