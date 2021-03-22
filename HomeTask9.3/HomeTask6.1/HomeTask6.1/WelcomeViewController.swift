//
//  WelcomeViewController.swift
//  HomeTask6.1
//
//  Created by Konstantin Dmitrievskiy on 20.03.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var startButton = UIButton()
    var image = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        
        let view = UIView(frame: UIScreen.main.bounds)
        view.backgroundColor = .white
        self.view = view
        
        setupUI()
        
        view.addSubview(image)
        view.addSubview(startButton)
    }
    
    override func viewWillLayoutSubviews() {
        startButton.translatesAutoresizingMaskIntoConstraints = false
        image.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            image.widthAnchor.constraint(equalToConstant: 80),
            image.heightAnchor.constraint(equalToConstant: 80),
            startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            startButton.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 40),
            startButton.widthAnchor.constraint(equalToConstant: 160),
            startButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func setupUI() {
        startButton.addTarget(self, action: #selector(startButtonPressed), for: .touchUpInside)
        startButton.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        startButton.setTitle("Start", for: .normal)
        startButton.layer.cornerRadius = 25
        image.image = UIImage(named: "circle")
    }
    
    @objc func startButtonPressed() {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let destinationVC = storyboard.instantiateViewController(identifier: "ViewController")
        present(destinationVC, animated: true, completion: nil)
    }
}
