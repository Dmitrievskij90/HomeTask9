//
//  ViewController.swift
//  Main Road
//
//  Created by Konstantin Dmitrievskiy on 20.03.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    private let flagImageView = UIImageView()
    private  let startButton = UIButton()
    private let titleLabel = UILabel()
    private let lineView = UIView()
    private let topView = UIView()
    private let bottomView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        let view = UIView(frame: UIScreen.main.bounds)
        view.backgroundColor = .white
        self.view = view
        view.backgroundColor = #colorLiteral(red: 0.5, green: 0.7485652143, blue: 0.8929982812, alpha: 1)
    
        view.addSubview(lineView)
        view.addSubview(startButton)
        view.addSubview(flagImageView)
        view.addSubview(topView)
        view.addSubview(bottomView)
        view.addSubview(flagImageView)
        topView.addSubview(titleLabel)
        bottomView.addSubview(startButton)
        
        setupUI()
    }
    
    override func viewWillLayoutSubviews() {
        startButton.translatesAutoresizingMaskIntoConstraints = false
        lineView.translatesAutoresizingMaskIntoConstraints = false
        flagImageView.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        topView.translatesAutoresizingMaskIntoConstraints = false
        bottomView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topView.topAnchor.constraint(equalTo: view.topAnchor),
            topView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),
            bottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bottomView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),
            startButton.widthAnchor.constraint(equalToConstant: 130),
            startButton.heightAnchor.constraint(equalToConstant: 130),
            startButton.centerXAnchor.constraint(equalTo: bottomView.centerXAnchor),
            startButton.centerYAnchor.constraint(equalTo: bottomView.centerYAnchor),
            lineView.widthAnchor.constraint(equalToConstant: 100),
            lineView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            lineView.topAnchor.constraint(equalTo: view.topAnchor),
            lineView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            flagImageView.widthAnchor.constraint(lessThanOrEqualToConstant: 200),
            flagImageView.heightAnchor.constraint(equalToConstant: 200),
            flagImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            flagImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -10),
            titleLabel.heightAnchor.constraint(equalToConstant: 100),
            titleLabel.widthAnchor.constraint(equalToConstant: 400),
            titleLabel.centerXAnchor.constraint(equalTo: topView.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: topView.centerYAnchor),
            titleLabel.heightAnchor.constraint(equalTo: topView.heightAnchor, multiplier: 0.5)
        ])
    }
    
    func setupUI() {
        startButton.addTarget(self, action: #selector(startButtonPressed), for: .touchUpInside)
        startButton.backgroundColor = .white
        startButton.setTitle("START", for: .normal)
        startButton.setTitleColor(.black, for: .normal)
        startButton.titleLabel?.font = UIFont(name: "bodoni 72 smallcaps", size: 35)
        startButton.layer.cornerRadius = 65
        startButton.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        startButton.layer.borderWidth = 3
        
        lineView.backgroundColor = #colorLiteral(red: 1, green: 0.3506166162, blue: 0.2081147492, alpha: 1)
        
        titleLabel.text = "Main road"
        titleLabel.textColor = .black
        titleLabel.font = UIFont(name: "Snell roundhand", size: 80)
        titleLabel.textAlignment = .center
        
        flagImageView.image = UIImage(named: "flag")
        flagImageView.contentMode = .scaleAspectFill
    }
    
    @objc func startButtonPressed() {
//        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
//        let destinationVC = storyboard.instantiateViewController(identifier: "ViewController")
//        present(destinationVC, animated: true, completion: nil)
    }
}

