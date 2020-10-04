//
//  CategoryCell.swift
//  productsIOS
//
//  Created by Aakarsh Yadav on 03/10/20.
//

import UIKit

class CategoryCell: UITableViewCell {
    @IBOutlet weak var CardImage: UIImageView!
    @IBOutlet weak var CardTitle: UILabel!
    
    func updateViews(category:Category){
        CardImage.image = UIImage(named: category.imageName)
        CardTitle.text = category.title
    }

}
