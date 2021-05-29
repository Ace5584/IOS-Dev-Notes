//
//  ViewController.swift
//  Exercise1
//
//  Created by Alex Lai on 18/5/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var toggle: UIButton!
    @IBOutlet weak var TextLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    
    var count = 1
    
    override func viewDidLoad() {
        // super.viewDidLoad()
        toggle.layer.cornerRadius = 15
        toggle.layer.masksToBounds = true
        
        TextLabel.text = "Who am I?"
        // TextLabel.setContentCompressionResistancePriority(.required, for: .vertical)
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func toggle(_ sender: UIButton) {
        if count == 0{
            TextLabel.text = "Who am I?"
            count += 1
        }
        else if count == 1 {
            TextLabel.text = "I'm a Apple Developer!"
            count += 1
        }
        else if count == 2{
            TextLabel.text = "I'm going to be an App Developer!"
            count = 0
        }
        TextLabel.sizeToFit()
    }
    
    
    
}

