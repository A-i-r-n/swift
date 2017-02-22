//
//  LoginViewController.swift
//  SwiftApp
//
//  Created by daiqile on 2016/12/14.
//  Copyright © 2016年 com.daiqile.daiqile. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "登录"
        
    }

    
    @IBAction func goRegist(_ sender: Any)
    {
        let regist = RegistViewController()
        self.navigationController?.pushViewController(regist, animated: true)
    }
  
}
