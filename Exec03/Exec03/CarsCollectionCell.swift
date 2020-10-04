//
//  CarsCollectionCell.swift
//  Exec03
//
//  Created by Cesar A. Tavares on 10/3/20.
//

import UIKit

class CarsCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var imageViewCars: UIImageView!
    @IBOutlet weak var labelCars: UILabel!
    
    func setup(cars: Cars) {
        imageViewCars.image = UIImage(named: cars.image)
        imageViewCars.layer.cornerRadius = imageViewCars.frame.size.width / 2
        labelCars.text = cars.brand
    }
    
}
