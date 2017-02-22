//
//  StoreViewController.swift
//  SwiftApp
//
//  Created by daiqile on 2016/12/14.
//  Copyright © 2016年 com.daiqile.daiqile. All rights reserved.
//

import UIKit


class StoreViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    let ExperienceCell = "ExperienceTableViewCell"
    
    let imgArray = ["zyb","dyd","qwd","hbd","zyx","zyb"]
    
    let titleArray = ["住银宝","抵押贷","企微贷","环保贷","住优选",""]
    
    lazy var dataArray = [BidModel]()
        
    override func viewDidLoad() {
        
        super.viewDidLoad()

        setupUI()
        
        createData()
        
    }

    
    
}



// MARK: tableView
extension StoreViewController {
    
    //注册cell
    func registCell() -> Void {
        
        self.tableView.register(UINib.init(nibName: "ExperienceTableViewCell", bundle: nil), forCellReuseIdentifier: ExperienceCell)
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return self.dataArray.count
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        if section == 0 {
            
            return ScreenWidth/3.0*2.0
            
        }
        
        return 5
        
    }

    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        
        return 0.001
        
    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0 {
            
            let btnView = BtnView.init(frame: CGRect.init(x: 0, y: 0, width: ScreenWidth, height: ScreenWidth/3.0*2.0), nubInLine: 3, lineNub: 2, titleArray: titleArray, imgArray: imgArray)
            
            return btnView
        }
        
        return nil
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 150
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: ExperienceCell) as! ExperienceTableViewCell
        
        cell.selectionStyle = .none
        
        cell.loadData(dataArray: dataArray, indexPath: indexPath)
        
        return cell
    }
    
}

// 设置 UI 数据
extension StoreViewController {
    
    func setupUI() {
        
        self.navigationItem.title = "商家"
        
        self.registCell()
    }
    
    
    func createData() -> Void {

        let array = [["name":"test","payMoney":"1234.00","apr":"7.0","limit_day":"6","allMoney":"40000.00"],["name":"test1","payMoney":"1200.00","apr":"5.0","limit_day":"3","allMoney":"50000.00"],["name":"test2","payMoney":"1000.00","apr":"7.5","limit_day":"1","allMoney":"20000.00"],["name":"test3","payMoney":"1400.00","apr":"6.0","limit_day":"3","allMoney":"80000.00"]]
        
        for dict: [String : Any] in array {
            
            let bid = BidModel.init(dict: dict)
            
            dataArray.append(bid)
        }
        
        tableView.reloadData()
        
    }
    
    
}
