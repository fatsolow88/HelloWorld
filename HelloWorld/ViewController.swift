//
//  ViewController.swift
//  HelloWorld
//
//  Created by Low Wai Hong on 03/09/2016.
//  Copyright © 2016 Low Wai Hong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var unitTextField: UITextField!
    @IBOutlet weak var ageLabel: UILabel!

    @IBOutlet weak var ageSlider: UISlider!

    @IBOutlet weak var memberInfoLabel: UILabel!

    var memberTeam: String = "S"

    @IBAction func registerMemberInfo(sender: AnyObject) {
        memberInfoLabel.text = "Name: \(nameTextField.text)\nTeam: \(memberTeam)\nUnit: \(unitTextField.text)\nAge: \(ageLabel.text)"
        nameTextField.resignFirstResponder()
        unitTextField.resignFirstResponder()
    }

    @IBAction func segmentedControlValueChanged(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            memberTeam = "S"
        case 1:
            memberTeam = "KII"
        case 2:
            memberTeam = "E"
        default:
            memberTeam = "KKS"
            break
        }
    }

    @IBAction func sliderValueChanged(sender: AnyObject) {
        let sliderValue = Int(ageSlider.value)
        ageLabel.text = "\(sliderValue)"
    }

//    @IBAction func changeMemberAge(sender: UISlider) {
//        ageLabel.text = sender.value.description
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
