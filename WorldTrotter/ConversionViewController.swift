//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by quentin picard on 8/9/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController, UITextFieldDelegate    {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("ConversionViewController loaded its view ")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        // how to change background color?
    }
    
    @IBOutlet var celsiusLabel: UILabel!
    @IBOutlet var textField: UITextField!
    
    var fahrenheitValue: Double? {
        didSet {
            updateCelsiusLabel()
        }
    }
    
    var celsiusValue: Double? {
        if let value = fahrenheitValue {
            return (value - 32) * (5/9)
        }
        else {
            return nil
        }
    }
 
    let numberFormatter: NumberFormatter = {
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 1
        return nf
    } ()

    
    @IBAction func farenheitFieldEditingChanged(textField: UITextField) {
        /*
        if let text = textField.text, value = Double(text) {
            fahrenheitValue = value
        }
        else {
            fahrenheitValue = nil
        }
*/
        if /*let text = textField.text, */let number = numberFormatter.number(from: textField.text!) {
            fahrenheitValue = number.doubleValue
        }
        else {
            fahrenheitValue = nil
        }
    }
    
    @IBAction func dismissKeyboard(sender: AnyObject) {
        textField.resignFirstResponder()
    }
    
    func updateCelsiusLabel() {
        if let value = celsiusValue {
            celsiusLabel.text = numberFormatter.string(from: value)  // using the numberFormatter defined above
        }
        else {
            celsiusLabel.text = "???"
        }
    }
    
    
    /*
    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {
        
        
        let existingTextHasDecimalSeparator = textField.text?.range(of: ".")
 
        
        let replacelementTextHasAlphabeticCharacters = string.???
        
    }*/
    
}
