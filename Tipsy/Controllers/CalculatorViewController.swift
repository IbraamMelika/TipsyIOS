//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPcButton: UIButton!
    @IBOutlet weak var tenPcButton: UIButton!
    @IBOutlet weak var twentyPcButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var val = 0.0
  
    @IBAction func tipChanged(_ sender: UIButton) {
        //start of func when user press a button
        //all buttons deselect
        zeroPcButton.isSelected = false
        tenPcButton.isSelected = false
        twentyPcButton.isSelected = false
        //At end of func only thing select is whatever user selected
        sender.isSelected = true
        if zeroPcButton.isSelected==true {
            val = 0.0
        }
        if tenPcButton.isSelected==true {
            val = 0.1
        }
        if twentyPcButton.isSelected==true {
            val = 0.2
        }
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        //print(splitNumberLabel.text!)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        //print(val)
        print(splitNumberLabel.text!)
    }
    
}

