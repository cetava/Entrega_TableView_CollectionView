//
//  ViewController.swift
//  Exec04
//
//  Created by Cesar A. Tavares on 10/3/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionViewNames: UICollectionView!
    
    var arrayPerson = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewNames.delegate = self
        collectionViewNames.dataSource = self
        
        arrayPerson.append(Person(name: "Cesar"))
        arrayPerson.append(Person(name: "Katia"))
        arrayPerson.append(Person(name: "Mauricio"))
        arrayPerson.append(Person(name: "Andressa"))
        arrayPerson.append(Person(name: "Sara"))
        arrayPerson.append(Person(name: "Fabio"))
        arrayPerson.append(Person(name: "Iara"))
        arrayPerson.append(Person(name: "Valentina"))
        arrayPerson.append(Person(name: "Julio Cesar"))
        arrayPerson.append(Person(name: "Luis Felipe"))
        arrayPerson.append(Person(name: "Celso"))
        arrayPerson.append(Person(name: "Marinalva"))
        arrayPerson.append(Person(name: "Luis"))
        arrayPerson.append(Person(name: "Angela"))
        arrayPerson.append(Person(name: "Manoel"))
    }

}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        arrayPerson.remove(at: indexPath.row)
        collectionView.reloadData()
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        arrayPerson.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NamesCollectionCell", for: indexPath) as! NamesCollectionCell
        cell.setup(person: arrayPerson[indexPath.row])
        return cell
    }
    
    
}
