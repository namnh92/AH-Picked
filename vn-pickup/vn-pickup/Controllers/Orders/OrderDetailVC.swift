//
//  OrderDetailVC.swift
//  vn-pickup
//
//  Created by Nguyễn Nam on 6/15/19.
//  Copyright © 2019 Nguyễn Nam. All rights reserved.
//

import UIKit

class OrderDetailVC: BaseVC {

    // MARK: - Outlets
    @IBOutlet weak var qrImageView: UIImageView!
    @IBOutlet weak var feeCountdown: UILabel!
    @IBOutlet weak var senderID: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var qrView: UIView!
    @IBOutlet weak var feeCountdownView: UIView!
    @IBOutlet weak var arriveCountdown: UIView!
    @IBOutlet weak var arriveDayLabel: UILabel!
    @IBOutlet weak var arriveTextLabel: UILabel!
    @IBOutlet weak var orderStatusLabel: UILabel!
    @IBOutlet weak var orderStatusImage: UIImageView!
    
    // MARK: - Variables
    var item: ListOrdersQuery.Data.ListOrder.Item!
    var orderId: String?
    private var onUpdateOrder: OnUpdateOrderSubscription.Data.OnUpdateOrder?
    private var getOrder: GetOrderQuery.Data.GetOrder?
    
    // MARK: - Life cycles
    override func viewDidLoad() {
        super.viewDidLoad()

        if let orderId = orderId {
            title = "#\(orderId)"
        } else {
            title = "#\(item.id)"
        }
        subcribe()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    // MARK: - Setup views
    override func setupView() {
        super.setupView()
        
        if let orderId = orderId {
            getOrderDetail(orderId: orderId)
        } else {
            qrImageView.generateQRImage(string: "demodata")
            
            if let sentBy = item.sentBy {
                senderID.text = "@\(sentBy.id)"
            }
            
            if let address = item.sentTo?.address {
                addressLabel.text = address
            }
            
            if let status = item.status {
                handleViewByStatus(status: status)
            }
        }
    }
    
    private func updateView(item: OnUpdateOrderSubscription.Data.OnUpdateOrder) {
        qrImageView.generateQRImage(string: "demodata")
        if let sentBy = item.sentBy {
            senderID.text = "@\(sentBy.id)"
        }
        
        if let address = item.sentTo?.address {
            addressLabel.text = address
        }
        
        if let status = item.status {
            handleViewByStatus(status: status)
        }
    }
    
    private func updateView(getOrder item: GetOrderQuery.Data.GetOrder) {
        qrImageView.generateQRImage(string: "demodata")
        if let sentBy = item.sentBy {
            senderID.text = "@\(sentBy.id)"
        }
        
        if let address = item.sentTo?.address {
            addressLabel.text = address
        }
        
        if let status = item.status {
            handleViewByStatus(status: status)
        }
    }
    
    private func handleViewByStatus(status: OrderStatus) {
        switch status {
        case .arrived:
            arriveCountdown.isHidden = true
            qrView.isHidden = false
            feeCountdownView.isHidden = false
            orderStatusLabel.text = status.rawValue.uppercased()
            orderStatusImage.isHidden  = false
        case .registered:
            arriveCountdown.isHidden = false
            qrView.isHidden = true
            feeCountdownView.isHidden = true
            if let arrivalDate = item.arrivalDate,
                let date = Date.getDateBy(string: arrivalDate, format: "yyyy-MM-dd'T'hh:mm:ss.SSSZ"),
                !date.timeAgoSinceDate().isEmpty {
                let number = date.timeAgoSinceDate().split(separator: " ")[0]
                let string = date.timeAgoSinceDate().split(separator: " ")[1]
                arriveDayLabel.text = "\(number)"
                arriveTextLabel.text = "\(string)"
            }
            orderStatusLabel.text = "Arrive In".uppercased()
            orderStatusImage.isHidden  = true
        default:
            arriveCountdown.isHidden = true
            qrView.isHidden = true
            feeCountdownView.isHidden = true
            orderStatusLabel.text = status.rawValue.uppercased()
            orderStatusImage.isHidden  = false
        }
    }

    // MARK: - Management datas
    private func getOrderDetail(orderId: String) {
        IndicatiorView.show()
        appSyncClient?.fetch(query: GetOrderQuery(id: orderId), cachePolicy: .returnCacheDataAndFetch) {[weak self] (result, error) in
            IndicatiorView.hide()
            guard let sSelf = self else { return }
            if error != nil {
                print(error?.localizedDescription ?? "")
                return
            }
            if let getOrder = result?.data?.getOrder {
                sSelf.updateView(getOrder: getOrder)
            }
        }
    }
    
    private func subcribe() {
        do {
            discard = try appSyncClient?.subscribe(subscription: OnUpdateOrderSubscription(), resultHandler: {[weak self] (result, transaction, error) in
                
                guard let sSelf = self else { return }
                if result != nil {
                    if let onUpdateOrder = result?.data?.onUpdateOrder {
                        sSelf.updateView(item: onUpdateOrder)
                    }
                } else if let error = error {
                    print(error.localizedDescription)
                }
            })
        } catch {
            print("Error starting subscription.")
        }
    }
    
    // MARK: - Private methods
}
