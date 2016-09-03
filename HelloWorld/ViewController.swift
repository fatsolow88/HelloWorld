//
//  ViewController.swift
//  HelloWorld
//
//  Created by Low Wai Hong on 03/09/2016.
//  Copyright © 2016 Low Wai Hong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var teamTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var unitTextField: UITextField!

    @IBOutlet weak var memberInfoLabel: UILabel!

    @IBAction func myButtonTap(sender: AnyObject) {
        memberInfoLabel.text = "Name:\(nameTextField.text)\nTeam:\(teamTextField.text)\nUnit:\(unitTextField.text)"
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
