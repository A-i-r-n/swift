//
//  ExperienceTableViewCell.swift
//  SwiftApp
//
//  Created by daiqile on 2016/12/28.
//  Copyright © 2016年 com.daiqile.daiqile. All rights reserved.
//

import UIKit

class ExperienceTableViewCell: UITableViewCell {

    //var dataModel : BidModel?
    
    @IBOutlet var name: UILabel!

    @IBOutlet var payMoney: UILabel!
    
    @IBOutlet var apr: UILabel!
    
    @IBOutlet var time_limit: UILabel!
    
    func loadData(dataArray : [BidModel],indexPath : IndexPath) -> Void {
        
        let model = dataArray[indexPath.section]
        
        name.text = model.name
        
        payMoney.text = "投资总额:" + model.payMoney

        apr.text = model.apr
        
        time_limit.text = model.limit_day
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
