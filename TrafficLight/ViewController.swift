//
//  ViewController.swift
//  TrafficLight
//
//  Created by Dmitry on 03.09.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lights: [UIView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for light in lights {
            light.layer.cornerRadius = light.frame.width / 2
        }
        // Do any additional setup after loading the view.
    }


}

