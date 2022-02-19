//
//  AgeButton.swift
//  CalculatorBMI
//
//  Created by Анастасия Ступникова on 12.02.2022.
//

import UIKit

class AgeButton: UIView, NibLoadable {
    
    // MARK: - IB Outlets
    
    @IBOutlet private var button: UIButton!
    
    // MARK: - Public Properties
    
    let nibName = "AgeButton"
    var onTapAction: ((AgeButton) -> Void)?
    
    @IBInspectable var text: String {
        get {
            return button.title(for: .normal) ?? ""
        }
        
        set(text) {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.alignment = .center
            
            let attrText = NSAttributedString(
                string: text,
                attributes: [
                    .font: UIFont.boldSystemFont(ofSize: 22),
                    .paragraphStyle: paragraphStyle
                ]
            )
            
            button.setAttributedTitle(attrText, for: .normal)
        }
    }
    
    // MARK: - Initializers
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadFromNib()
        layer.masksToBounds = true
        backgroundColor = .clear
    }
    
    // MARK: - Override Methods
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = frame.height / 2
    }
    
    // MARK: - IB Actions
    
    @IBAction private func onTap(_ sender: Any) {
        onTapAction?(self)
    }
    
}
