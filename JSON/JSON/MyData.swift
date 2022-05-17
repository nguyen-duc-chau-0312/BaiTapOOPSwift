//
//  Data.swift
//  JSON
//
//  Created by Nguyen Duc Chau on 16/05/2022.
//

import Foundation
import SwiftyJSON

struct MyData {

    let Des: String
    var List: [NhaCungCap]
    
    init(_ json: JSON) {
        self.Des = json["Des"].stringValue
        let listTemp = json["List"].arrayValue
        self.List = []
        for item in listTemp {
            self.List.append(NhaCungCap.init(item))
        }
        
    }
    init(_ string1: String,_ string2: String) {
        self.Des = ""
        self.List = []
    }
    
}

struct NhaCungCap {
    let GroupName: String
    let ProName: String
    let Id: Int
    let ProCode: String
    let GroupCode: String
    
    init(_ json: JSON) {
        self.GroupName = json["GroupName"].stringValue
        self.ProName = json["ProName"].stringValue
        self.Id = json["Id"].intValue
        self.ProCode = json["ProCode"].stringValue
        self.GroupCode = json["GroupCode"].stringValue
    }
}
