//
//  AnimalDetailViewController.swift
//  Exec02
//
//  Created by Cesar A. Tavares on 10/2/20.
//

import UIKit

class AnimalDetailViewController: UIViewController {
    
    @IBOutlet weak var labelName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func actionButtonClose(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
