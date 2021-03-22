//
//  FifthViewController.swift
//  HomeTask9.1
//
//  Created by Konstantin Dmitrievskiy on 19.03.2021.
//

import UIKit

class FifthViewController: UIViewController {
    
    @IBOutlet weak var greetLabel: UILabel!
    
    var text = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetLabel.text = text
    }    
}
