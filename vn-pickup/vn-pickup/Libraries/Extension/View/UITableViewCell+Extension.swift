//
//  UITableViewCell+Extension.swift
//  vn-pickup
//
//  Created by Nguyễn Nam on 6/15/19.
//  Copyright © 2019 Nguyễn Nam. All rights reserved.
//

import UIKit

// MARK: - UITableViewCell
protocol XibTableViewCell {
    static var name: String { get }
    static func registerCellTo(tableView: UITableView)
    static func dequeueCellFor(tableView: UITableView, at indexPath: IndexPath) -> Self?
}

extension XibTableViewCell where Self: UITableViewCell {
    static var name: String {
        return String(describing: self).components(separatedBy: ".").last ?? ""
    }
    
    static func registerCellTo(tableView: UITableView) {
        tableView.register(Self.self, forCellReuseIdentifier: name)
    }
    
    static func dequeueCellFor(tableView: UITableView, at indexPath: IndexPath) -> Self? {
        return tableView.dequeueReusableCell(withIdentifier: name, for: indexPath) as? Self
    }
}

extension UITableViewCell: XibTableViewCell { }

// MARK: - UITableHeaderFooterView
protocol XibTableHeaderFooterView {
    static var name: String { get }
    static func registerHeaderFooterTo(tableView: UITableView)
    static func dequeueHeaderFooterFor(tableView: UITableView) -> Self?
}

extension XibTableHeaderFooterView where Self: UITableViewHeaderFooterView {
    static var name: String {
        return String(describing: self).components(separatedBy: ".").last ?? ""
    }
    
    static func registerHeaderFooterTo(tableView: UITableView) {
        tableView.register(Self.self, forHeaderFooterViewReuseIdentifier: name)
    }
    
    static func dequeueHeaderFooterFor(tableView: UITableView) -> Self? {
        return tableView.dequeueReusableHeaderFooterView(withIdentifier: name) as? Self
    }
}

extension UITableViewHeaderFooterView: XibTableHeaderFooterView { }
