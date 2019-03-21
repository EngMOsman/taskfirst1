//
//  HomeVC.swift
//  egybike
//
//  Created by osman on 2/10/19.
//  Copyright © 2019 osman. All rights reserved.
//

import UIKit
import MapKit

class HomeVC: UIViewController {
    

   
    @IBOutlet weak var mapVIEW: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func sideMenu(_ sender: Any) {
    }
    
    @IBAction func scanQR(_ sender: Any) {
    }
    


}
