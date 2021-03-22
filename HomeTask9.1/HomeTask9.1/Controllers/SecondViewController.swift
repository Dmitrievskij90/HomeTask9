//
//  SecondViewController.swift
//  HomeTask9.1
//
//  Created by Konstantin Dmitrievskiy on 19.03.2021.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var nextButton: UIButton!
    
    var text = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillLayoutSubviews() {
        nextButton.layer.cornerRadius = 25
        nextButton.layer.borderColor = #colorLiteral(red: 1, green: 0.5212053061, blue: 1, alpha: 1)
        nextButton.layer.borderWidth = 2.5
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "ThirdViewController", bundle: Bundle.main)
        let destinationVC = storyboard.instantiateInitialViewController() as? ThirdViewController
        destinationVC?.text = text
        present(destinationVC!, animated: true, completion: nil)
    }
}
