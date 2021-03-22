//
//  ViewController.swift
//  HomeTask6.1
//
//  Created by Konstantin Dmitrievskiy on 09.03.2021.
//

import UIKit

class ViewController: UIViewController {

    var button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        
        let view = UIView(frame: UIScreen.main.bounds)
        view.backgroundColor = .white
        self.view = view
        
        let image = UIImage(named: "circle")
        
        button.setImage(image, for: UIControl.State.normal)
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        view.addSubview(button)
    }
    
    override func viewWillLayoutSubviews() {
//        button.frame = CGRect(x: view.center.x, y: view.center.y, width: 50, height: 50)
        button.layer.cornerRadius = 25
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 50),
            button.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc func buttonPressed() {
        let x = CGFloat.random(in: 1...view.bounds.size.width - 50)
        let y = CGFloat.random(in: 1...view.bounds.size.height - 50)
        
        button.frame = CGRect(x: x, y: y, width: 50, height: 50)
    }
}

