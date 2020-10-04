//
//  ViewController.swift
//  Exec01
//
//  Created by Cesar A. Tavares on 10/1/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableViewListPerson: UITableView!
    var arrayPerson = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewListPerson.delegate = self
        tableViewListPerson.dataSource = self
        
        arrayPerson.append(Person(name: "Cesar", post: "Presidente", email: "Cesar@gmail.com"))
        arrayPerson.append(Person(name: "Katia", post: "Vice-Presidente", email: "Katia@gmail.com"))
        arrayPerson.append(Person(name: "Maurício", post: "CTO", email: "Mauricio@gmail.com"))
        arrayPerson.append(Person(name: "Fabio", post: "Direto Comercial", email: "Fabio@gmail.com"))
        arrayPerson.append(Person(name: "Celso", post: "Vendedor", email: "Celso@gmail.com"))
        arrayPerson.append(Person(name: "Luiz", post: "Compras a Pagar", email: "Luiz@gmail.com"))
        arrayPerson.append(Person(name: "Angela", post: "Contas a Receber", email: "Angela@gmail.com"))
        arrayPerson.append(Person(name: "Sara", post: "Analista", email: "Sara@gmail.com"))
        arrayPerson.append(Person(name: "Andressa", post: "Advogada", email: "Andressa@gmail.com"))
        arrayPerson.append(Person(name: "Julio Cesar", post: "Atendente", email: "Julio@gmail.com"))
        arrayPerson.append(Person(name: "Luis Felipe", post: "Desenvolvedor", email: "Luis@gmail.com"))
        arrayPerson.append(Person(name: "Manoel", post: "Desenvolvedor", email: "Manoel@gmail.com"))
        arrayPerson.append(Person(name: "Valentina", post: "Desenvolvedora", email: "Valentina@gmail.com"))
        arrayPerson.append(Person(name: "Iara", post: "Estagiária", email: "Iara@gmail.com"))
        arrayPerson.append(Person(name: "Marinalva", post: "Diretora Financeira", email: "Marinalva@gmail.com"))
    }


}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let personalDetailView = UIStoryboard(name: "PersonalDetail", bundle: nil).instantiateInitialViewController() as? PersonalDetailViewController {
            present(personalDetailView, animated: true, completion: nil)
            personalDetailView.labelName.text = arrayPerson[indexPath.row].name
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayPerson.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonTableCell", for: indexPath) as! PersonTableCell
        cell.setup(person: arrayPerson[indexPath.row])
        return cell
    }
    
    
}
