//
//  ViewController.swift
//  moo
//
//  Created by Student on 4/26/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func press(_ sender: Any) {
        label.backgroundColor = UIColor.green
        label.text = "You're such a goodie goodie"
    }

    @IBAction func Not(_ sender: Any) {
        label.backgroundColor = UIColor.red
        label.text = "You're rebelious I like that"
    }
    
    @IBAction func reset(_ sender: Any) {
        label.backgroundColor = UIColor.white
        label.text = " "
    }

    
}

