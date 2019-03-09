//
//  ViewController.swift
//  ratingStar
//
//  Created by manpreet on 3/3/19.
//  Copyright © 2019 manpreet. All rights reserved.
//

import UIKit
import Cosmos
import TinyConstraints

class ViewController: UIViewController {
    
     let label = UILabel(frame: CGRect(x: 300, y: 200, width: 200, height: 21))
    
    lazy var cosmosView: CosmosView =
        {
            var view = CosmosView()
            
            
            
            view.settings.filledImage = UIImage(named:"filledstar")?.withRenderingMode(.alwaysOriginal)
            view.settings.emptyImage = UIImage(named:"emptystar")?.withRenderingMode(.alwaysOriginal)
            
            view.settings.totalStars = 10
            view.settings.starSize = 20
            view.settings.starMargin = 4
            (view.settings.fillMode = .precise)
            
           
            label.center = CGPoint(x: 160, y: 285)
            label.textAlignment = .center
            label.translatesAutoresizingMaskIntoConstraints = true
            
           // label.addConstraint(NSLayoutConstraint(item: label, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 21))
           // label.addConstraint(NSLayoutConstraint(item: label, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 200))
            
            self.view.addSubview(label)
            
            
            
            return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        self.view.addSubview(self.cosmosView)
        self.cosmosView.centerInSuperview()
        cosmosView.didTouchCosmos = {
            rating in
            print("rate value:\(rating)")
            self.label.text = "\(rating)"
        }
        
        
        
       
    
    }


}

