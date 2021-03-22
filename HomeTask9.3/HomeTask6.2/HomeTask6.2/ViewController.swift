//
//  ViewController.swift
//  HomeTask6.2
//
//  Created by Konstantin Dmitrievskiy on 09.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var viewArray = [UIView]()
    var fillButton = UIButton()
    var clearButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        let view = UIView(frame: UIScreen.main.bounds)
        view.backgroundColor = .white
        self.view = view
        
        fillButton.setTitle("Fill", for: .normal)
        fillButton.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        fillButton.addTarget(self, action: #selector(fillButtonPressed), for: .touchUpInside)
        

        clearButton.setTitle("Clear", for: .normal)
        clearButton.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        clearButton.addTarget(self, action: #selector(clearButtonPressed), for: .touchUpInside)
        
        view.addSubview(clearButton)
        view.addSubview(fillButton)
    }
    
    override func viewWillLayoutSubviews() {
        clearButton.layer.cornerRadius = 25
        fillButton.layer.cornerRadius = 25

        fillButton.translatesAutoresizingMaskIntoConstraints = false
        clearButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            fillButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            fillButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            fillButton.widthAnchor.constraint(equalToConstant: 100),
            fillButton.heightAnchor.constraint(equalToConstant: 50),
            clearButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            clearButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            clearButton.widthAnchor.constraint(equalToConstant: 100),
            clearButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    func createView() -> [UIView] {
        var number = 1
        
        while number <= 20{
            
            let x = CGFloat.random(in: 1...view.bounds.size.width - 50)
            let y = CGFloat.random(in: 1...view.bounds.size.height - 50)
            
            let rect = CGRect(x: x, y: y, width: 50, height: 50)
            
            let newView = UIView(frame: rect)
            
            newView.backgroundColor = getRandomColor()
            
            for view in viewArray {
                if view.frame.intersects(newView.frame) || view.frame.intersects(fillButton.frame) || view.frame.intersects(clearButton.frame) {
                    view.isHidden = true
                }
            }
            viewArray.append(newView)
            
            number += 1
        }
        return viewArray
    }
    
    func getRandomColor() -> UIColor {
        let red:CGFloat = CGFloat.random(in: 0...1)
        let green:CGFloat = CGFloat.random(in: 0...1)
        let blue:CGFloat = CGFloat.random(in: 0...1)
        
        return UIColor(red:red, green: green, blue: blue, alpha: 1.0)
    }
    
    @objc func fillButtonPressed() {
        let viewsArray = createView()
        for myView in viewsArray {
            self.view.addSubview(myView)
        }
        
    }
    
    @objc func clearButtonPressed() {
        let viewsArray = createView()
        for circleView in viewsArray {
            circleView.removeFromSuperview()
        }
    }
}


