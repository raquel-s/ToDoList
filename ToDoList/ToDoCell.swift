//
//  ToDoCell.swift
//  ToDoList
//
//  Created by user170369 on 4/24/20.
//  Copyright © 2020 user170369. All rights reserved.
//

import UIKit

@objc protocol ToDoCellDelegate: class {
    func checkmarkTapped(sender: ToDoCell)
}

class ToDoCell: UITableViewCell {
    
    var delegate: ToDoCellDelegate?
    
    @IBOutlet weak var isCompleteButton: UIButton!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBAction func completedButtonTapped() {
        delegate?.checkmarkTapped(sender: self)
    }
    
    
}
