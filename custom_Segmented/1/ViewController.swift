//
//  ViewController.swift
//  1
//
//  Created by Artem Grebinik on 13.07.17.
//  Copyright © 2017 Artem Hrebinik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var gradient:CAGradientLayer = {
        let gradient = CAGradientLayer()
        gradient.frame = self.view.bounds
        gradient.startPoint = CGPoint(x: 1, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        return gradient
    }()

    func change(layer: CAGradientLayer, colors: CGColor...) {
        layer.colors = colors
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.layer.insertSublayer(gradient, at: 0)
        change(layer: gradient, colors: UIColor.purple.cgColor, UIColor.lightGray.cgColor)
    }
    

    @IBAction func segmentedAction(_ sender: segmentedView) {
        
        switch sender.selectedSegmentedIndex {
        case 0:
            change(layer: gradient, colors: UIColor.purple.cgColor, UIColor.lightGray.cgColor)
        case 1:
            change(layer: gradient, colors: UIColor.red.cgColor, UIColor.blue.cgColor)
        case 2:
            change(layer: gradient, colors: UIColor.orange.cgColor, UIColor.brown.cgColor)
        default: break;
        }
    }
}

