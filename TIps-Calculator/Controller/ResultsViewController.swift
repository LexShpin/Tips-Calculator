//
//  ResultsViewController.swift
//  TIps-Calculator
//
//  Created by Alexander Shpin on 02.09.2022.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var splitDescriptionLabel: UILabel!
    
    var result = ""
    var splitDescriptionText = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = result
        splitDescriptionLabel.text = splitDescriptionText
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
