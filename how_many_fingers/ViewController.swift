//
//  ViewController.swift
//  how_many_fingers
//
//  Created by Aamir Shah on 11/10/16.
//  Copyright © 2016 Aamir Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var inputLabel: UITextField!
    @IBAction func guessTapped(_ sender: Any) {
        if (inputLabel.text != "") {
            let match: Int = Int(arc4random_uniform(9) + 1)
            let input: Int = Int(inputLabel.text!)!
            
            if (match == input) {
                resultLabel.text = "You're right"
            } else {
                resultLabel.text = "Wrong! It was a \(match)."
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

