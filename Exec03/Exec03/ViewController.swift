//
//  ViewController.swift
//  Exec03
//
//  Created by Cesar A. Tavares on 10/3/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionViewCarsList: UICollectionView!
    var arrayCars = [Cars]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Lista de Carros"
        
        collectionViewCarsList.delegate = self
        collectionViewCarsList.dataSource = self
        
        arrayCars.append(Cars(brand: "Audi", image: "Audi.png"))
        arrayCars.append(Cars(brand: "BMW", image: "BMW.png"))
        arrayCars.append(Cars(brand: "Bugatti", image: "Bugatti.png"))
        arrayCars.append(Cars(brand: "Corvette", image: "Corvette.png"))
        arrayCars.append(Cars(brand: "Ferrari", image: "Ferrari.png"))
        arrayCars.append(Cars(brand: "Lamborghini", image: "Lamborghini.png"))
        arrayCars.append(Cars(brand: "Lexus", image: "Lexus.png"))
        arrayCars.append(Cars(brand: "Mercedes", image: "Mercedes.png"))
        arrayCars.append(Cars(brand: "Nissan", image: "Nissan.png"))
        arrayCars.append(Cars(brand: "Porsche", image: "Porsche.png"))
    }
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let carDetailView = UIStoryboard(name: "CarDetail", bundle: nil).instantiateInitialViewController() as? CarDetailViewController {
            navigationController?.pushViewController(carDetailView, animated: true)
            carDetailView.title = arrayCars[indexPath.row].brand
            carDetailView.selectedImage = arrayCars[indexPath.row].image
        }
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayCars.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CarsCollectionCell", for: indexPath) as! CarsCollectionCell
        cell.setup(cars: arrayCars[indexPath.row])
        return cell
    }
    
    
}
