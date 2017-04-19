//
//  PlayerTableViewCell.swift
//  Alcool
//
//  Created by Nicolas BOSTE on 4/18/17.
//  Copyright © 2017 Nicolas BOSTE. All rights reserved.
//

import UIKit

class PlayerTableViewCell: UITableViewCell {
    
    var indexPath: IndexPath? {
        return (superview as? UITableView)?.indexPath(for: self)
    }
    
    @IBOutlet weak var IdLabel: UILabel!
    @IBOutlet weak var NameField: UITextField!
}
