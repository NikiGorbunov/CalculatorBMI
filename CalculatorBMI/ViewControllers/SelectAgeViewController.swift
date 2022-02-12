//
//  ViewController.swift
//  CalculatorBMI
//
//  Created by Анастасия Ступникова on 11.02.2022.
//

import UIKit

class SelectAgeViewController: UIViewController {
    
    // MARK: - IB Outlets
    
    @IBOutlet private var buttons: [AgeButton]!
    
    // MARK: - Override Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for button in buttons {
            button.onTapAction = onButtonTap
        }
    }
    
    // MARK: - Private Methods
    
    private func onButtonTap(ageButton: AgeButton) {
        self.performSegue(withIdentifier: "ageButton", sender: self)
    }

}

