//
//  ThirdViewController.swift
//  HomeTask9.1
//
//  Created by Konstantin Dmitrievskiy on 19.03.2021.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var nextButton: UIButton!
    
    var text = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillLayoutSubviews() {
        nextButton.layer.cornerRadius = 25
        nextButton.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        nextButton.layer.borderWidth = 2.5
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "FourthViewController", bundle: Bundle.main)
        let destinationVC = storyboard.instantiateInitialViewController() as? FourthViewController
        destinationVC?.text = text
        present(destinationVC!, animated: true, completion: nil)
    }
}
