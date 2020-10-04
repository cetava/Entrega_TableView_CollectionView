//
//  PersonTableCell.swift
//  Exec01
//
//  Created by Cesar A. Tavares on 10/1/20.
//

import UIKit

class PersonTableCell: UITableViewCell {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelPost: UILabel!
    @IBOutlet weak var labelEMail: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func setup(person: Person){
        labelName.text = person.name
        labelPost.text = person.post
        labelEMail.text = person.email
    }

}
