//
//  ViewController.swift
//  TIps-Calculator
//
//  Created by Alexander Shpin on 02.09.2022.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet var totalTextField: UITextField!
    @IBOutlet var zeroPercentBtn: UIButton!
    @IBOutlet var tenPercentBtn: UIButton!
    @IBOutlet var twentyPercentBtn: UIButton!
    @IBOutlet var splitValue: UILabel!
    
    var tip = 0.1
    var split = 0
    var total = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tenPercentBtn.isSelected = true
    }

    @IBAction func tipSelected(_ sender: UIButton) {
        if (sender == zeroPercentBtn) {
            zeroPercentBtn.isSelected = true
            tenPercentBtn.isSelected = false
            twentyPercentBtn.isSelected = false
            tip = 0.0
        } else if (sender === tenPercentBtn) {
            zeroPercentBtn.isSelected = false
            tenPercentBtn.isSelected = true
            twentyPercentBtn.isSelected = false
            tip = 0.1
        } else {
            zeroPercentBtn.isSelected = false
            tenPercentBtn.isSelected = false
            twentyPercentBtn.isSelected = true
            tip = 0.2
        }
    }
    
    @IBAction func splitChanged(_ sender: UIStepper) {
        splitValue.text = String(format: "%.0f", sender.value)
        print("hello")
    }
    

}

