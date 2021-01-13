//
//  ViewController.swift
//  TrafficLite
//
//  Created by DiuminPM on 03.01.2021.
//

import UIKit
enum CurentLight {
    case red, yellow, green
}

class ViewController: UIViewController {
    @IBOutlet var redColorView: UIView!
    @IBOutlet var yellowColorView: UIView!
    @IBOutlet var greenColorView: UIView!
    @IBOutlet var actionButton: UIButton!
    
    private var currentLight = CurentLight.red
    private var lighthIsOn: CGFloat = 1
    private var lighthIsOff: CGFloat = 0.2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        actionButton.layer.cornerRadius = 15
        redColorView.layer.cornerRadius = 75
        yellowColorView.layer.cornerRadius = 75
        greenColorView.layer.cornerRadius = 75
        redColorView.alpha = lighthIsOff
        yellowColorView.alpha = lighthIsOff
        greenColorView.alpha = lighthIsOff
        
//        redColorView.backgroundColor = UIColor.red.withAlphaComponent(0.2)
//        yellowColorView.backgroundColor = UIColor.yellow.withAlphaComponent(0.2)
//        greenColorView.backgroundColor = UIColor.green.withAlphaComponent(0.2)
//        redColorView.layer.cornerRadius = 75
//        yellowColorView.layer.cornerRadius = 75
//        greenColorView.layer.cornerRadius = 75
//        actionButton.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    @IBAction func makeButtonAction() {
        actionButton.setTitle("Next", for:  .normal)
        switch currentLight {
        case .red:
            greenColorView.alpha = lighthIsOff
            redColorView.alpha = lighthIsOn
            currentLight = .yellow
        case .yellow:
            redColorView.alpha = lighthIsOff
            yellowColorView.alpha = lighthIsOn
            currentLight = .green
        case.green:
            yellowColorView.alpha = lighthIsOff
            greenColorView.alpha = lighthIsOn
            currentLight = .red
        }
//        if redColorView.backgroundColor == UIColor.red.withAlphaComponent(0.2) &&
//        yellowColorView.backgroundColor == UIColor.yellow.withAlphaComponent(0.2) &&
//        greenColorView.backgroundColor == UIColor.green.withAlphaComponent(0.2) {
//            self.redColorView.backgroundColor = UIColor.red
//            actionButton.setTitle("Next", for: .normal)
//        } else if redColorView.backgroundColor == UIColor.red {
//            self.redColorView.backgroundColor = UIColor.red.withAlphaComponent(0.2)
//            self.yellowColorView.backgroundColor = UIColor.yellow
//        }
//        else if yellowColorView.backgroundColor == UIColor.yellow {
//            self.yellowColorView.backgroundColor = UIColor.yellow.withAlphaComponent(0.2)
//            self.greenColorView.backgroundColor = UIColor.green
//        }
//        else {
//            redColorView.backgroundColor = UIColor.red.withAlphaComponent(0.2)
//            yellowColorView.backgroundColor = UIColor.yellow.withAlphaComponent(0.2)
//            greenColorView.backgroundColor = UIColor.green.withAlphaComponent(0.2)
//            actionButton.setTitle("Start", for: .normal)
//        }
//        }
    }
    }
        
        

    


