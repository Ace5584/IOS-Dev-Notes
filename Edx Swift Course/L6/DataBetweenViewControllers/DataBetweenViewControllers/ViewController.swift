//
//  ViewController.swift
//  DataBetweenViewControllers
//
//  Created by Alex Lai on 8/6/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleText: UITextField!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = titleText.text
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismissSlide(unwind: UIStoryboardSegue){
        
    }


}

