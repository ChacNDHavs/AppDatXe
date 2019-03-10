//
//  RegisterViewController.swift
//  AppDatXe
//
//  Created by DC on 3/11/19.
//  Copyright © 2019 Ngo Dang Chac. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func openLoginView(_ sender : Any) {
        (self.parent as! AccountViewController).openLogin()
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
