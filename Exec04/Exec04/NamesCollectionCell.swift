//
//  NamesCollectionCell.swift
//  Exec04
//
//  Created by Cesar A. Tavares on 10/4/20.
//

import UIKit
import QuartzCore

class NamesCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelInitialCharcter: UILabel!
    
    func setup(person: Person) {
        labelName.text = person.name
        labelInitialCharcter.attributedText = NSAttributedString(string: String(labelName.text!.prefix(1)))
        labelInitialCharcter.layer.cornerRadius = 26
        labelInitialCharcter.layer.masksToBounds = true
    }
}
