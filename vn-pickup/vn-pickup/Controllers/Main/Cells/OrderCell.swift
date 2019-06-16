//
//  OrderCell.swift
//  vn-pickup
//
//  Created by Nguyễn Nam on 6/15/19.
//  Copyright © 2019 Nguyễn Nam. All rights reserved.
//

import UIKit

class OrderCell: UITableViewCell {
    
    @IBOutlet weak var arrivedView: UIView!
    @IBOutlet weak var toLocationLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var orderIdLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setContent(item: ListOrdersQuery.Data.ListOrder.Item) {
        orderIdLabel.text = "#\(item.id)"
        
        if item.status != .arrived {
            if let arrivalDate = item.arrivalDate,
                let date = Date.getDateBy(string: arrivalDate, format: "yyyy-MM-dd'T'hh:mm:ss.SSSZ") {
                if Date() > date {
                    statusLabel.text = item.status?.rawValue.uppercased()
                } else {
                    statusLabel.text = "Arrive in \(date.timeAgoSinceDate())"
                }
            }
        } else {
            statusLabel.text = "Arrived"
        }
        
        if let sendTo = item.sentTo {
            toLocationLabel.text = sendTo.address
        }
        if item.status == .registered {
            arrivedView.isHidden = true
        } else {
            arrivedView.isHidden = false
        }
    }
    
}
