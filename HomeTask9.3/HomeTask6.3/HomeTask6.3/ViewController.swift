//
//  ViewController.swift
//  HomeTask6.3
//
//  Created by Konstantin Dmitrievskiy on 10.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var upButton = UIButton()
    var downButton = UIButton()
    var leftButton = UIButton()
    var rightButton = UIButton()
    var ballImageView = UIImageView()
    var restrictView = UIView()
    
    var x = 195
    var y = 422
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        
        let view = UIView(frame: UIScreen.main.bounds)
        view.backgroundColor = .white
        self.view = view
   
        ballImageView.image = UIImage(named: "circle")
        
        upButton.setImage(UIImage(named: "up"), for: .normal)
        upButton.contentMode = .scaleAspectFit
        upButton.addTarget(self, action: #selector(upButtonPressed), for: .touchUpInside)

        downButton.setImage(UIImage(named: "down"), for: .normal)
        downButton.contentMode = .scaleAspectFit
        downButton.addTarget(self, action: #selector(downButtonPressed), for: .touchUpInside)

        leftButton.setImage(UIImage(named: "left"), for: .normal)
        leftButton.contentMode = .scaleAspectFit
        leftButton.addTarget(self, action: #selector(leftButtonPressed), for: .touchUpInside)

        rightButton.setImage(UIImage(named: "right"), for: .normal)
        rightButton.contentMode = .scaleAspectFit
        rightButton.addTarget(self, action: #selector(rightButtonPressed), for: .touchUpInside)
        
        view.addSubview(ballImageView)
        view.addSubview(upButton)
        view.addSubview(downButton)
        view.addSubview(leftButton)
        view.addSubview(rightButton)
        view.addSubview(restrictView)
    }
    
    override func viewWillLayoutSubviews() {
        ballImageView.frame = CGRect(x: Int(view.bounds.midX), y: Int(view.bounds.midY), width: 50, height: 50)
        ballImageView.layer.cornerRadius = 25
        ballImageView.clipsToBounds = true
        
        leftButton.layer.cornerRadius = 25
        leftButton.clipsToBounds = true
        
        rightButton.layer.cornerRadius = 25
        rightButton.clipsToBounds = true
        
        upButton.layer.cornerRadius = 25
        upButton.clipsToBounds = true
        
        downButton.layer.cornerRadius = 25
        downButton.clipsToBounds = true
        
        setupLayout()
    }
    
    @objc func upButtonPressed() {
        
        if y <= Int(view.frame.minY + 50) {
            y = Int(view.frame.minY + 50)
            ballImageView.frame = CGRect(x: x, y: y, width: 50, height: 50)
        } else {
            y -= 10
            ballImageView.frame = CGRect(x: x, y: y, width: 50, height: 50)
        }
    }
    
    @objc func downButtonPressed() {
        
        if ballImageView.frame.intersects(restrictView.frame) {
            y -= 1
            ballImageView.frame = CGRect(x: x, y: y, width: 50, height: 50)
        } else {
            y += 10
            ballImageView.frame = CGRect(x: x, y: y, width: 50, height: 50)
        }
    }
    
    @objc func leftButtonPressed() {
        if x <= Int(view.frame.minX) {
            x = Int(view.frame.minX)
            ballImageView.frame = CGRect(x: x, y: y, width: 50, height: 50)
        } else {
            x -= 10
            ballImageView.frame = CGRect(x: x, y: y, width: 50, height: 50)
        }
    }
    
    @objc func rightButtonPressed() {
        
        if x >= Int(view.bounds.width - 50) {
            x = Int(view.bounds.width - 50)
            ballImageView.frame = CGRect(x: x, y: y, width: 50, height: 50)
        } else {
            x += 10
            ballImageView.frame = CGRect(x: x, y: y, width: 50, height: 50)
        }
    }
    
    func setupLayout() {
        leftButton.translatesAutoresizingMaskIntoConstraints = false
        rightButton.translatesAutoresizingMaskIntoConstraints = false
        downButton.translatesAutoresizingMaskIntoConstraints = false
        upButton.translatesAutoresizingMaskIntoConstraints = false
        restrictView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            upButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            upButton.bottomAnchor.constraint(equalTo: downButton.topAnchor, constant: -20),
            upButton.heightAnchor.constraint(equalToConstant: 80),
            upButton.widthAnchor.constraint(equalToConstant: 80),
            downButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            downButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 10),
            downButton.heightAnchor.constraint(equalToConstant: 80),
            downButton.widthAnchor.constraint(equalToConstant: 80),
            leftButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            leftButton.trailingAnchor.constraint(equalTo: downButton.leadingAnchor, constant: -10),
            leftButton.heightAnchor.constraint(equalToConstant: 80),
            leftButton.widthAnchor.constraint(equalToConstant: 80),
            rightButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            rightButton.leadingAnchor.constraint(equalTo: downButton.trailingAnchor, constant: 10),
            rightButton.heightAnchor.constraint(equalToConstant: 80),
            rightButton.widthAnchor.constraint(equalToConstant: 80),
            restrictView.bottomAnchor.constraint(equalTo: upButton.topAnchor),
            restrictView.heightAnchor.constraint(equalToConstant: 5),
            restrictView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            restrictView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor)
        ])
    }
}

