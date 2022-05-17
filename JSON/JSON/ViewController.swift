//
//  ViewController.swift
//  JSON
//
//  Created by Nguyen Duc Chau on 16/05/2022.
//

import UIKit
import SwiftyJSON

class ViewController: UIViewController {

    var khachHangArr: [NhaCungCap] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getData()
        
    }
    
    func getData() {
        
        if let path = Bundle.main.path(forResource: "data", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                let myData = MyData.init(JSON(rawValue: jsonResult) ?? "")
                print(myData.Des)
//                print(myData.List)
                for item in myData.List {
                    print(item)
                }
               // NSLog(str)
            } catch {
                print("Loi")
            }
        }
        
        
        
    }
    
    
    
}

