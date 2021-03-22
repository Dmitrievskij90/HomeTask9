//
//  ViewController.swift
//  HomeTask9.1
//
//  Created by Konstantin Dmitrievskiy on 19.03.2021.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    
    var greeting = "Hi there!"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillLayoutSubviews() {
        button.layer.cornerRadius = 25
        button.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        button.layer.borderWidth = 2.5
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "SecondViewController", bundle: Bundle.main)
        let destinationVC = storyboard.instantiateInitialViewController() as? SecondViewController
        destinationVC?.text = greeting
        present(destinationVC!, animated: true, completion: nil)
    }
}

