//
//  MapViewController.swift
//  WorldTrotter
//
//  Created by quentin picard on 8/11/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    var mapView: MKMapView!
    
    override func loadView() {
        // Create a map view
        mapView = MKMapView()
        
        // Set it as *the* view of this view controller
        view = mapView
        
        let segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
        segmentedControl.backgroundColor = UIColor.white
        segmentedControl.selectedSegmentIndex = 0
        
        segmentedControl.addTarget(self, action: ".mapTypeChanged:", for: .valueChanged)
        
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControl)
        
        let topConstraint = segmentedControl.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: 0)
        let margins = view.layoutMarginsGuide
        let leadingConstraint = segmentedControl.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 0)
        let trailingConstraint = segmentedControl.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: 0)
        
        /* old code
        let leadingConstraint = segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0)
        let trailingConstraint = segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0)
        */
            
        topConstraint.isActive = true
        leadingConstraint.isActive = true
        trailingConstraint.isActive = true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("MapViewController loaded its view ")
    }
    
    func mapTypeChanged(segControl: UISegmentedControl) {
        switch segControl.selectedSegmentIndex {
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .hybrid
        case 2:
            mapView.mapType = .satellite
        default:
            break
        }
    }
    
}
