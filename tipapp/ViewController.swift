//
//  ViewController.swift
//  tipapp
//
//  Created by Meghbartma Gautam on 10/5/14.
//  Copyright (c) 2014 Meghbartma Gautam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        tipLabel.text="0.00"
        totalLabel.text="0.00"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        println("User editing")
        var tipPercentages = [0.15,0.20,0.25]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        
        var billAmount = billField.text._bridgeToObjectiveC().doubleValue
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        tipLabel.text = "\(tip)"
        totalLabel.text = "\(total)"
        
        tipLabel.text = String(format:"$%.2f" ,tip)
        totalLabel.text = String(format:"$%.2f" ,total)
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

