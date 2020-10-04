//
//  ViewController.swift
//  productsIOS
//
//  Created by Aakarsh Yadav on 03/10/20.
//

import UIKit

class CategoryVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            print(category)
            return cell
        } else {
            return CategoryCell()
        }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductVC", sender: category)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let prodcutVC = segue.destination as? ProductVC {
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            assert(sender as? Category  != nil)
            prodcutVC.initProduct(category: sender as! Category )
            
        }
    }
}

