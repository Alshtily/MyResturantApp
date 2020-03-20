//
//  ViewController.swift
//  MyResturantApp
//
//  Created by saad on 3/17/20.
//  Copyright © 2020 MyResturantApp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var TextFaild: UITextField!
    
    
    @IBAction func Button(_ sender: Any) {
        
        var Text  = TextFaild.text!
        
        switch Text {
        case "Mom":
            print("I love Mom")
            
        case "Dad":
            print("I love Dad")
        default:
            print("non")
        }
        
    }
    
}

