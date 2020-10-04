//
//  ViewController.swift
//  Exec02
//
//  Created by Cesar A. Tavares on 10/2/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViewListAnimals: UITableView!
    var arrayAnimals = [Animal]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewListAnimals.delegate = self
        tableViewListAnimals.dataSource = self
        arrayAnimals.append(Animal(name: "Alex", breed: "Leão", weight: 190, species: "Mamífero"))
        arrayAnimals.append(Animal(name: "Maurice", breed: "Lêmure", weight: 2.20, species: "Mamífero"))
        arrayAnimals.append(Animal(name: "Marty", breed: "Zebra", weight: 290, species: "Mamífero"))
        arrayAnimals.append(Animal(name: "Glória", breed: "Hipopótamo", weight: 1500.00, species: "Mamífero"))
        arrayAnimals.append(Animal(name: "Capitão", breed: "Pinguim", weight: 2.5, species: "Mamífero"))
        arrayAnimals.append(Animal(name: "Kowalski", breed: "Pinguim", weight: 2.5, species: "Mamífero"))
        arrayAnimals.append(Animal(name: "Rico", breed: "Pinguim", weight: 2.5, species: "Mamífero"))
        arrayAnimals.append(Animal(name: "Recruta", breed: "Pinguim", weight: 2.5, species: "Mamífero"))
        arrayAnimals.append(Animal(name: "Melman", breed: "Girafa", weight: 1200.00, species: "Mamífero"))
        arrayAnimals.append(Animal(name: "Rei Julien", breed: "Lêmure-de-Cauda-Anelada ", weight: 2.20, species: "Mamífero"))
    }


}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let animalDetailView = UIStoryboard(name: "AnimalDetail", bundle: nil).instantiateInitialViewController() as? AnimalDetailViewController {
            tableView.deselectRow(at: indexPath, animated: true)
            present(animalDetailView, animated: true, completion: nil)
            animalDetailView.labelName.text = arrayAnimals[indexPath.row].name
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayAnimals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalDetail", for: indexPath) as! AnimalDetailTableCell
        cell.setup(animal: arrayAnimals[indexPath.row])
        return cell
    }
    
    
}
