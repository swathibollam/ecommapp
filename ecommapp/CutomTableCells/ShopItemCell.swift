//
//  ShopItemCell.swift
//  ecommapp
//
//  Created by chaitanya kumar mynam on 5/6/21.
//

import UIKit

// declare item cell delegate
protocol ItemCellDelegate: class {
    func addToCartTapped(tag: Int)
}

class ShopItemCell: UITableViewCell {

    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var addToCartButton: UIButton!
    
    weak var delegate: ItemCellDelegate?
    
    @IBAction func addToCartAction(_ sender: UIButton) {
        delegate?.addToCartTapped(tag: sender.tag)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func generateCell(_ item: Item) {
        
        nameLabel.text = item.name
        nameLabel.adjustsFontSizeToFitWidth = true
        descriptionLabel.text = item.description
        priceLabel.text = convertToCurrency(item.price)
        priceLabel.adjustsFontSizeToFitWidth = true
        
        self.itemImageView.image = UIImage(named: item.imageName)
        
    }
    
    
}
