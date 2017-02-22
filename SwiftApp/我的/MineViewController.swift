//
//  MineViewController.swift
//  SwiftApp
//
//  Created by daiqile on 2016/12/14.
//  Copyright © 2016年 com.daiqile.daiqile. All rights reserved.
//

import UIKit

class MineViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "我的"
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "登录", style: .plain, target: self, action: #selector(goLogin))

    }

    func goLogin() -> Void {
        let login = LoginViewController()
        self.navigationController?.pushViewController(login, animated: true)
    }
   
}
