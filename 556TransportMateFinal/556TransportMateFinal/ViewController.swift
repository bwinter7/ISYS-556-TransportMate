//
//  ViewController.swift
//  556TransportMateFinal
//
//  Created by Winter on 10/30/18.
//  Copyright © 2018 SFSU. All rights reserved.
//

import UIKit
import CoreLocation
import UserNotifications

struct Station : Decodable {
    
   let STATIONNAME: String
   let LATITUDE : Double
   let LONGITUDE : Double
   let DESCRIPTION : String
   let DISTANCEFROMSF1 : Int
   let ADDRESS: String
    
}


    var stations = [Station]()

class UNLocationNotificationTrigger : UNNotificationTrigger{}

class ViewController: UIViewController, CLLocationManagerDelegate{

    let locationManager:CLLocationManager = CLLocationManager()
    
    @IBAction func screen2button(_ sender: Any) {
        performSegue(withIdentifier: "screen2", sender: self)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        locationManager.delegate = self
    
        locationManager.requestWhenInUseAuthorization()
        
        locationManager.startUpdatingLocation()
    
        
       let center = CLLocationCoordinate2D(latitude: 37.7212, longitude: -122.47684379999998)
        let region = CLCircularRegion(center: center, radius: 100.0, identifier: "SFSU Business")
        region.notifyOnEntry = true
        region.notifyOnExit = false
        //let trigger = UNLocationNotificationTrigger(region: region, repeats: false)
    
        
    }

}


