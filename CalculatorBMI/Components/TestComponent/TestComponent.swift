//
//  TestComponent.swift
//  CalculatorBMI
//
//  Created by Анастасия Ступникова on 11.02.2022.
//

import UIKit

@IBDesignable class TestComponent: UIView, NibLoadable {
    let nibName = "TestComponent"
    
    @IBOutlet var testLabel: UILabel!
    
    @IBInspectable var text: String {
        get {
            return testLabel.text!
        }
        
        set(text) {
            testLabel.text = text
        }
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadFromNib()
    }
}
