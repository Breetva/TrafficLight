//
//  ViewController.swift
//  TrafficLight
//
//  Created by Dmitry on 03.09.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lights: [UIView]!
    @IBOutlet var button: UIButton!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.setTitle("START", for: .normal)
        for light in lights {
            light.layer.cornerRadius = light.frame.width / 2
        }
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonDidTapped() {
        button.setTitle("NEXT", for: .normal)
        
        switch counter {
        case 0:
            lights[0].alpha = 1
            lights[1].alpha = 0.25
            lights[2].alpha = 0.25
            counter += 1
        case 1:
            lights[0].alpha = 0.25
            lights[1].alpha = 1
            lights[2].alpha = 0.25
            counter += 1
        default:
            lights[0].alpha = 0.25
            lights[1].alpha = 0.25
            lights[2].alpha = 1
            counter = 0
        }
    }
    
}

