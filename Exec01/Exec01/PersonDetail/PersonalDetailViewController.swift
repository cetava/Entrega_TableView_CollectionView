//
//  PersonalDetailViewController.swift
//  Exec01
//
//  Created by Cesar A. Tavares on 10/1/20.
//

import UIKit

class PersonalDetailViewController: UIViewController {
    @IBOutlet weak var labelName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func actionButtonClose(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
