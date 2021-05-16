//
//  ViewController.swift
//  FirstApp
//
//  Created by Alex Lai on 14/5/21.
//

import UIKit

class ViewController: UIViewController {
    
    var colorIsYellow = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func AlexBtn(_ sender: UIButton) {
        if colorIsYellow{
            view.backgroundColor = UIColor.green
            colorIsYellow = false
        }
        else{
            view.backgroundColor = UIColor.yellow
            colorIsYellow = true
        }
        
    }
    
}

