//
//  ViewController.swift
//  TrafficLite
//
//  Created by DiuminPM on 03.01.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redColorView: UIView!
    @IBOutlet var yellowColorView: UIView!
    @IBOutlet var greenColorView: UIView!
    @IBOutlet var actionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColorView.backgroundColor = UIColor.red.withAlphaComponent(0.2)
        yellowColorView.backgroundColor = UIColor.yellow.withAlphaComponent(0.2)
        greenColorView.backgroundColor = UIColor.green.withAlphaComponent(0.2)
        redColorView.layer.cornerRadius = 75
        yellowColorView.layer.cornerRadius = 75
        greenColorView.layer.cornerRadius = 75
        actionButton.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    @IBAction func makeButtonAction() {
        if redColorView.backgroundColor == UIColor.red.withAlphaComponent(0.2) &&
        yellowColorView.backgroundColor == UIColor.yellow.withAlphaComponent(0.2) &&
        greenColorView.backgroundColor == UIColor.green.withAlphaComponent(0.2) {
            self.redColorView.backgroundColor = UIColor.red
            actionButton.setTitle("Next", for: .normal)
        } else if redColorView.backgroundColor == UIColor.red {
            self.redColorView.backgroundColor = UIColor.red.withAlphaComponent(0.2)
            self.yellowColorView.backgroundColor = UIColor.yellow
        }
        else if yellowColorView.backgroundColor == UIColor.yellow {
            self.yellowColorView.backgroundColor = UIColor.yellow.withAlphaComponent(0.2)
            self.greenColorView.backgroundColor = UIColor.green
        }
        else {
            redColorView.backgroundColor = UIColor.red.withAlphaComponent(0.2)
            yellowColorView.backgroundColor = UIColor.yellow.withAlphaComponent(0.2)
            greenColorView.backgroundColor = UIColor.green.withAlphaComponent(0.2)
            actionButton.setTitle("Start", for: .normal)
        }
        }
    }
        
        

    


