//
//  MyData.swift
//  DemoJSONCustom
//
//  Created by Nguyen Duc Chau on 17/05/2022.
//

import Foundation
import SwiftyJSON

struct MyData {
    let des: String
    let aisles: Produce
    
    init(_ json: JSON) {
        self.des = json["Des"].stringValue
        self.aisles = Produce(json["aisles"])
    }
}

struct Produce {
    let name: String
    var shelves: [Product]
    
    init(_ json: JSON) {
        self.name = json["name"].stringValue
        let list = json["shelves"].arrayValue
        self.shelves = []
        
        for item in list {
            self.shelves.append(Product(item))
        }
        
    }
}

struct Product {
    let name: String
    let product: Company
    
    init(_ json: JSON) {
        self.name = json["name"].stringValue
        self.product = Company(json["product"])
    }
}

struct Company {
    let name: String
    let points: Int
    let description: String
    
    init(_ json: JSON) {
        self.name = json["name"].stringValue
        self.points = json["points"].intValue
        self.description = json["description"].stringValue
        
    }
}
