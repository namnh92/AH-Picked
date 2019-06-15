//
//  MainVC.swift
//  vn-pickup
//
//  Created by Nguyễn Nam on 6/15/19.
//  Copyright © 2019 Nguyễn Nam. All rights reserved.
//

import UIKit

class MainVC: BaseVC {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet var tableHeaderView: UIView!
    
    private var listOrders: ListOrdersQuery.Data.ListOrder? {
        didSet {
            tableView.reloadData()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
        subcribe()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.isHidden = true
    }
    
    override func setupView() {
        super.setupView()
        
        tableView.set(delegateAndDataSource: self)
        tableView.tableHeaderView = tableHeaderView
        tableView.registerNibCellFor(type: OrderCell.self)
    }
    
    // MARK: - Data managements
    private func fetchData() {
        IndicatiorView.show()
        appSyncClient?.fetch(query: ListOrdersQuery(), cachePolicy: .fetchIgnoringCacheData) {[weak self] (result, error) in
            IndicatiorView.hide()
            guard let sSelf = self else { return }
            if error != nil {
                print(error?.localizedDescription ?? "")
                return
            }
            sSelf.listOrders = result?.data?.listOrders
        }
    }
    
    private func subcribe() {
        do {
            discard = try appSyncClient?.subscribe(subscription: OnCreateOrderSubscription(), resultHandler: {[weak self] (result, transaction, error) in
                
                guard let sSelf = self else { return }
                if result != nil {
                    sSelf.fetchData()
                } else if let error = error {
                    print(error.localizedDescription)
                }
            })
        } catch {
            print("Error starting subscription.")
        }
    }
}

extension MainVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOrders?.items?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.reusableCell(type: OrderCell.self),
        let item = listOrders?.items?[indexPath.row] else { return UITableViewCell() }
        cell.setContent(item: item)
        return cell
    }
}

extension MainVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        OrderDetailVC.present()
    }
}
