//
//  ViewController.swift
//  TextChanger
//
//  Created by Alex Lai on 18/5/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func textChange(_ sender: UIButton) {
        print("You pressed this button! In @IBAction func textchange")
        Label.text = "Apple Devloper Documentation"
    }
    
}

