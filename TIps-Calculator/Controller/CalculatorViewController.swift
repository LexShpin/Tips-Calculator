//
//  ViewController.swift
//  TIps-Calculator
//
//  Created by Alexander Shpin on 02.09.2022.
//

import UIKit

class CalculatorViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var totalTextField: UITextField!
    @IBOutlet var zeroPercentBtn: UIButton!
    @IBOutlet var tenPercentBtn: UIButton!
    @IBOutlet var twentyPercentBtn: UIButton!
    @IBOutlet var splitValue: UILabel!
    
    var total: Float = 0.0
    var tip: Float = 0.1
    var split: Float = 2.0
    var result: Float = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.totalTextField.delegate = self
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
        split = Float(sender.value)
        print(split)
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        total = Float(totalTextField.text!)!
        result = (total + (total * tip)) / split
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? ResultsViewController else {return}
        vc.result = String(format: "%.2f", result)
        vc.splitDescriptionText = "Split between \(Int(split)) people with \(Int(tip * 100))% tip"
    }
    
    // end editing when return is tapped
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
}

