//
//  Category.swift
//  productsIOS
//
//  Created by Aakarsh Yadav on 03/10/20.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    init(title: String,imageName:String) {
        self.title = title
        self.imageName = imageName
    }
}
