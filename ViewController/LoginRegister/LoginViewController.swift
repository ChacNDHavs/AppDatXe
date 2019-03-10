//
//  ViewController.swift
//  AppDatXe
//
//  Created by DC on 3/6/19.
//  Copyright © 2019 Ngo Dang Chac. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func openRegister(_ sender : Any) {
        (self.parent as! AccountViewController).openRegister()
    }
    
}

