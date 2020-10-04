//
//  ProductsCell.swift
//  productsIOS
//
//  Created by Aakarsh Yadav on 04/10/20.
//

import UIKit

class ProductsCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateViews(product:Product){
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = "$" + product.price
    }
}
