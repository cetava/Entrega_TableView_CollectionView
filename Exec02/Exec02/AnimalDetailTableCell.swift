//
//  AnimalDetailTableCell.swift
//  Exec02
//
//  Created by Cesar A. Tavares on 10/2/20.
//

import UIKit

class AnimalDetailTableCell: UITableViewCell {
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelBreed: UILabel!
    @IBOutlet weak var labelWeight: UILabel!
    @IBOutlet weak var labelSpecies: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func setup(animal: Animal) {
        labelName.text = animal.name
        labelBreed.text = animal.breed
        labelWeight.text = String(animal.weight)
        labelSpecies.text = animal.species
    }

}
