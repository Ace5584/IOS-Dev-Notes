//
//  ViewController.swift
//  ControlsWithSegues
//
//  Created by Alex Lai on 8/6/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func blueBtn(_ sender: UIButton) {
        if btnSwitch.isOn {
            performSegue(withIdentifier: "Blue", sender: self)
        }
    }
    
    @IBAction func greenBtn(_ sender: UIButton) {
        if btnSwitch.isOn {
            performSegue(withIdentifier: "Green", sender: self)
        }
    }
    
    @IBAction func unwindSlide(slide : UIStoryboardSegue){
        
    }
}

