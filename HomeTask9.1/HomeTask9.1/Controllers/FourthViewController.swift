//
//  FourthViewController.swift
//  HomeTask9.1
//
//  Created by Konstantin Dmitrievskiy on 19.03.2021.
//

import UIKit

class FourthViewController: UIViewController {
    
    @IBOutlet weak var nextButton: UIButton!
    
    var text = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillLayoutSubviews() {
        nextButton.layer.cornerRadius = 25
        nextButton.layer.borderColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        nextButton.layer.borderWidth = 2.5
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "FifthViewController", bundle: Bundle.main)
        let destinationVC = storyboard.instantiateInitialViewController() as? FifthViewController
        destinationVC?.text = text
        present(destinationVC!, animated: true, completion: nil)
    }
}
