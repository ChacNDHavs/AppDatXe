//
//  CheckBox.swift
//  AppDatXe
//
//  Created by DC on 3/11/19.
//  Copyright © 2019 Ngo Dang Chac. All rights reserved.
//

import UIKit
import M13Checkbox

class CheckBox: UIView {

    @IBOutlet var containerView: UIView!
    @IBOutlet weak var viewCheckBox: UIView!
    var checkBox : M13Checkbox!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    func setupView(){
        Bundle.main.loadNibNamed("CheckBox", owner: self, options: nil)
        addSubview(containerView)
        containerView.frame = self.bounds
        containerView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        checkBox = M13Checkbox(frame: CGRect.zero)
        viewCheckBox.addSubview(checkBox)
        checkBox.translatesAutoresizingMaskIntoConstraints = false
        checkBox.topAnchor.constraint(equalTo: viewCheckBox.topAnchor).isActive = true
        checkBox.leadingAnchor.constraint(equalTo: viewCheckBox.leadingAnchor).isActive = true
        checkBox.trailingAnchor.constraint(equalTo: viewCheckBox.trailingAnchor).isActive = true
        checkBox.bottomAnchor.constraint(equalTo: viewCheckBox.bottomAnchor).isActive = true
        checkBox.markType = .checkmark
        checkBox.tintColor = UIColor.green
        checkBox.boxType = .square
        checkBox.secondaryTintColor = UIColor.green
    }
}
