//
//  screen3ViewController.swift
//  556TransportMateFinal
//
//  Created by Winter on 10/30/18.
//  Copyright © 2018 SFSU. All rights reserved.
//

import UIKit
import MapKit


class screen3ViewController: UIViewController {

    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       let initialLocation = CLLocation(latitude: 37.722312, longitude: -122.476506)
        
        zoomMapOn(location: initialLocation)
        
    }
    
    func zoomMapOn(location: CLLocation){
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 2000,longitudinalMeters: 2000)
        
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
