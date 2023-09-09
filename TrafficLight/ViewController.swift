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
    
    private var numberOfLight = 0
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.25
    
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
        
        switch numberOfLight {
        case 0:
            lights[0].alpha = lightIsOn
            lights[1].alpha = lightIsOff
            lights[2].alpha = lightIsOff
            numberOfLight += 1
        case 1:
            lights[0].alpha = lightIsOff
            lights[1].alpha = lightIsOn
            lights[2].alpha = lightIsOff
            numberOfLight += 1
        default:
            lights[0].alpha = lightIsOff
            lights[1].alpha = lightIsOff
            lights[2].alpha = lightIsOn
            numberOfLight = 0
        }
    }
    
}

