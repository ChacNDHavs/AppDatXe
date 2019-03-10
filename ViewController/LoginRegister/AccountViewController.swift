//
//  AccountViewController.swift
//  AppDatXe
//
//  Created by DC on 3/11/19.
//  Copyright © 2019 Ngo Dang Chac. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController {
    
    var loginViewController : LoginViewController!
    var registerViewController : RegisterViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        loginViewController = UIStoryboard.init(name: Constant.idStoryBoard.main, bundle: nil).instantiateViewController(withIdentifier: Constant.idViewController.loginView) as! LoginViewController
//        addChild(loginViewController)
        self.present(loginViewController, animated: false, completion: nil)
    }
    
    func openRegister(){
        registerViewController = UIStoryboard.init(name: Constant.idStoryBoard.main, bundle: nil).instantiateViewController(withIdentifier: Constant.idViewController.registerView) as! RegisterViewController
        registerViewController.modalTransitionStyle = .coverVertical
        self.present(registerViewController, animated: true, completion: nil)
    }
    
    func openLogin(){
        loginViewController = UIStoryboard.init(name: Constant.idStoryBoard.main, bundle: nil).instantiateViewController(withIdentifier: Constant.idViewController.loginView) as! LoginViewController
        loginViewController.modalTransitionStyle = .crossDissolve
//        self.dismiss(animated: true) {
        self.present(loginViewController, animated: true, completion: nil)
//        self.present(self.loginViewController, animated: true, completion: nil)
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
