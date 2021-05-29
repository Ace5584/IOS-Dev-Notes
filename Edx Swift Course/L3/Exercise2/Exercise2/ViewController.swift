//
//  ViewController.swift
//  Exercise2
//
//  Created by Alex Lai on 29/5/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectedText: UITextField!
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var btnChangeColor: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the
         btnChangeColor.layer.cornerRadius = 15
         btnChangeColor.layer.masksToBounds = true
    }
    
    // view.backgroundColor = UIColor.green
    // displayedColour.text = newColour.text
    
    @IBAction func btnChangeColor(_ sender: UIButton) {
        colorLabel.text = collectedText.text
        let backgroundColor = collectedText.text
        switch backgroundColor{
        case "blue":
            view.backgroundColor = UIColor.blue
        case "red":
            view.backgroundColor = UIColor.red
        case "green":
            view.backgroundColor = UIColor.green
        case "orange":
            view.backgroundColor = UIColor.orange
        case "yellow":
            view.backgroundColor = UIColor.yellow
        default:
            view.backgroundColor = UIColor.white
            colorLabel.text = ("Unidentified Color: " + backgroundColor!)
        }
    }
    
}

