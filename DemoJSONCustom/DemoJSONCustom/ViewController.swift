//
//  ViewController.swift
//  DemoJSONCustom
//
//  Created by Nguyen Duc Chau on 17/05/2022.
//

import UIKit
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getDataJSON()
    }
    
    func getDataJSON() {
        
        if let path = Bundle.main.path(forResource: "json", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path),options: .mappedIfSafe)
                let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                let myData = MyData(JSON(rawValue: jsonResult) ?? "")
                
//                print(myData.aisles)
//                print(myData.des)
                let temp = myData.aisles.shelves
                for i in temp {
                    print(i)
                }
                
            } catch {
                print(error)
            }
        }
    }


}

