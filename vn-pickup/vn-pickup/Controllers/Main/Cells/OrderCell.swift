//
//  OrderCell.swift
//  vn-pickup
//
//  Created by Nguyễn Nam on 6/15/19.
//  Copyright © 2019 Nguyễn Nam. All rights reserved.
//

import UIKit

class OrderCell: UITableViewCell {
    
    @IBOutlet weak var toLocationLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var orderIdLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setContent(item: ListOrdersQuery.Data.ListOrder.Item) {
        orderIdLabel.text = "#\(item.id)"
        statusLabel.text = "Arrived"
        if let sendTo = item.sentTo {
            toLocationLabel.text = sendTo.name
        }
    }
    
}
