//
//  LocationViewController.swift
//  ProyectoViajar
//
//  Created by Robinson Villegas on 11/30/18.
//  Copyright © 2018 elvis villaca. All rights reserved.
//

import UIKit
import GoogleMaps

class LocationViewController: UIViewController {
    
    var position_latitude: Double = -33.86
    
    var position_longitude: Double = 151.20
    
    var location_title: String = "Sydney"
    
    var currentZoom: Float = 6.0
    
    var objMap : ViajesBE!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let camera = GMSCameraPosition.camera(withLatitude: self.position_latitude, longitude: self.position_longitude, zoom: self.currentZoom)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: self.position_latitude, longitude: self.position_longitude)
        marker.title = self.location_title
        // marker.snippet = "Australia"
        marker.map = mapView

        // Do any additional setup after loading the view.
    }
    



}
