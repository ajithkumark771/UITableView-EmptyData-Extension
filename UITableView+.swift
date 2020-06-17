//
//  UITableView+.swift
//  Created by ajith on 17/06/20.
//  Copyright © 2020 ajith. All rights reserved.
//

import Foundation
import UIKit

extension UITableView{
    func updateEmptyState(rowsCount: Int, emptyMessage: String){
        rowsCount == 0 ? showEmptyState(emptyMessage) : hideEmptyState()
        self.reloadData()
    }
    
    private func showEmptyState(_ message: String){
        let label = UILabel(frame: .zero)
        label.text = message
        label.textAlignment = .center
        backgroundView = label
    }
    
    private func hideEmptyState(){
        backgroundView = nil
    }
}


//usage 
 self.tableView.updateEmptyState(rowsCount: array.count, emptyMessage: "No data Found")
