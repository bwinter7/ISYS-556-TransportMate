//
//  screen2ViewController.swift
//  556TransportMateFinal
//
//  Created by Winter on 10/30/18.
//  Copyright © 2018 SFSU. All rights reserved.
//


import UIKit

class screen2ViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    
    
    
   
    
    @IBOutlet weak var textbox1: UITextField!
    
    
    @IBOutlet weak var textbox2: UITextField!
    

    
    @IBOutlet weak var dropdown1: UIPickerView!
    
    
    
    @IBOutlet weak var dropdown2: UIPickerView!
    
    
    
    
    
    
    var station = ["San Francisco Station", "22nd Street Station", "Bayshore Station", "South San Francisco Station", "San Bruno Station","Millbrae Transit Center","Broadway Station","Burlingame Station","San Mateo Station","Hayward Park Station"]
    var stops = ["1", "2", "3"]
    
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var countrows : Int = station.count
        if pickerView == dropdown2 {
            
            
            countrows = self.stops.count
        }
        
        
        return countrows
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == dropdown1 {
            
            
            let titleRow = station[row]
            
            
            return titleRow
            
            
        }
            
            
        else if pickerView == dropdown2{
            let titleRow = stops[row]
            
            
            return titleRow
        }
        
        
        return ""
    }
    
    
    
    
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == dropdown1 {
            self.textbox1.text = self.station[row]
            self.dropdown1.isHidden = true
        }
            
            
        else if pickerView == dropdown2{
            self.textbox2.text = self.stops[row]
            self.dropdown2.isHidden = true
            
            
        }
    }
    
    
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if (textField == self.textbox1){
            self.dropdown1.isHidden = false
            
            
        }
        else if (textField == self.textbox2){
            self.dropdown2.isHidden = false
            
            
        }
        
        
    }
    
    @IBOutlet weak var calTrainImg: UIImageView!
    
    //var station : StationInfo?

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
}

