//
//  CarDetailViewController.swift
//  Exec03
//
//  Created by Cesar A. Tavares on 10/3/20.
//

import UIKit

class CarDetailViewController: UIViewController {

    @IBOutlet weak var imageViewCars: UIImageView!
    
    var selectedImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let image = selectedImage {
            imageViewCars.image = UIImage(named: image)
        }

    }


}
