//
//  WelcomeViewController.swift
//  HomeTask6.3
//
//  Created by Konstantin Dmitrievskiy on 20.03.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    let backgroundImageView = UIImageView()
    let startButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        
        let view = UIView(frame: UIScreen.main.bounds)
        view.backgroundColor = .white
        self.view = view
        
        setupUI()
        
        view.addSubview(backgroundImageView)
        view.addSubview(startButton)
    }
    
    override func viewWillLayoutSubviews() {
        startButton.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            startButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            startButton.widthAnchor.constraint(equalToConstant: 160),
            startButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func setupUI() {
        startButton.addTarget(self, action: #selector(startButtonPressed), for: .touchUpInside)
        startButton.backgroundColor = #colorLiteral(red: 0.6642242074, green: 0.6642400622, blue: 0.6642315388, alpha: 1)
        startButton.setTitle("Start", for: .normal)
        startButton.layer.cornerRadius = 25
        backgroundImageView.image = UIImage(named: "background")
    }
    
    @objc func startButtonPressed() {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let destinationVC = storyboard.instantiateViewController(identifier: "ViewController")
        present(destinationVC, animated: true, completion: nil)
    }
}
