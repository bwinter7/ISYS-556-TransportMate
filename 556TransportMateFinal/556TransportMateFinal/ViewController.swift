//
//  ViewController.swift
//  556TransportMateFinal
//
//  Created by Winter on 10/30/18.
//  Copyright © 2018 SFSU. All rights reserved.
//

import UIKit

struct Station : Decodable {
    
   let STATIONNAME: String
   let LATITUDE : Double
   let LONGITUDE : Double
   let DESCRIPTION : String
   let DISTANCEFROMSF1 : Int
   let ADDRESS: String
    
}
class ViewController: UIViewController, UIPickerViewDataSource  {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        <#code#>
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        <#code#>
    }
    
 
    
    var stations = [Station]()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        let path = Bundle.main.path(forResource: "StationInfoUpdated", ofType:"json")
        let url = URL(fileURLWithPath: path!)
        do{
            let data = try Data(contentsOf: url)
            self.stations = try JSONDecoder().decode([Station].self, from: data)
            for eachStation in self.stations {
                print(
                    eachStation.STATIONNAME,
                    eachStation.LATITUDE,
                    eachStation.LONGITUDE,
                    eachStation.DESCRIPTION,
                    eachStation.DISTANCEFROMSF1,
                    eachStation.ADDRESS
                )
            }
        }
        catch{
            print("Json Error")
        }
    }




}
