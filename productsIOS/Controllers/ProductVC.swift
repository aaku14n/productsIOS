//
//  ProductVC.swift
//  productsIOS
//
//  Created by Aakarsh Yadav on 04/10/20.
//

import UIKit

class ProductVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource,
                 UICollectionViewDelegateFlowLayout {
  
    @IBOutlet weak var productsCollection: UICollectionView!
    private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        productsCollection.dataSource = self
        productsCollection.delegate = self
    }
    
    func initProduct(category:Category){
        products = DataService.instance.getProducts(forProductTitle: category.title)
        navigationItem.title = category.title
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.size.width / 2) - 10,height: 260)
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductsCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }else{
            return ProductsCell()
        }
    }
    

}
