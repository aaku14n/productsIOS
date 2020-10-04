//
//  DataService.swift
//  productsIOS
//
//  Created by Aakarsh Yadav on 03/10/20.
//

import Foundation

class DataService {
    static let instance = DataService()
    private let categories = [
        Category(title:"SHIRTS",imageName: "nike.jpg"),
        Category(title:"HATS",imageName: "nike.jpg"),
        Category(title:"HODDIES",imageName: "nike.jpg"),
        Category(title:"MASK",imageName: "nike.jpg"),
        
    ]
    private let hats = [
        Product(title: "Black Hats", price: "160", imageName: "nike.jpg"),
        Product(title: "Red Hats", price: "260", imageName: "nike.jpg"),
        Product(title: "Yellow Hats", price: "200", imageName: "nike.jpg"),
        Product(title: "Blue Hats", price: "22", imageName: "nike.jpg"),
    ]
    
    private let hoddies = [
        Product(title: "Black Hoddies", price: "160", imageName: "nike.jpg"),
        Product(title: "Red Hoddies", price: "260", imageName: "nike.jpg"),
        Product(title: "Yellow Hoddies", price: "200", imageName: "nike.jpg"),
        Product(title: "Blue Hoddies", price: "22", imageName: "nike.jpg"),
    ]
    
    private let shirts = [
        Product(title: "Black shirts", price: "160", imageName: "nike.jpg"),
        Product(title: "Red shirts", price: "260", imageName: "nike.jpg"),
        Product(title: "Yellow shirts", price: "200", imageName: "nike.jpg"),
        Product(title: "Blue shirts", price: "22", imageName: "nike.jpg"),
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    func getProducts(forProductTitle category:String)->[Product]{
        switch category {
        case "SHIRITS":
          return getShirts()
        case "HATS":
           return getHats()
        case "HODDIES":
         return getHoddies()
        case "DIGITAL":
          return getDigitalGoods()
        default:
            return getShirts()
        }
        
    }
    func getShirts()->[Product]{
        return shirts
    }
    func getHats()->[Product]{
        return hats
    }
    func getHoddies()->[Product]{
        return hoddies
    }
    func getDigitalGoods()->[Product]{
        return digitalGoods
    }
}
