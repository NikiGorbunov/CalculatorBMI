//
//  NibLoadable.swift
//  CalculatorBMI
//
//  Created by Анастасия Ступникова on 11.02.2022.
//

import UIKit

protocol NibLoadable {
    var nibName: String { get }
}

extension NibLoadable where Self: UIView {
    func loadFromNib() {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView

        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(view)
    }
}
