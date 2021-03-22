//
//  ViewController.swift
//  HomeTask9.2
//
//  Created by Konstantin Dmitrievskiy on 20.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var weatherButton: UIButton!
    
    let weather = WeatherModel(temp: "-10", city: "Novosibirsk", type: "snow", conditionImage: "cloud.snow")
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillLayoutSubviews() {
        weatherButton.layer.cornerRadius = 25
        weatherButton.clipsToBounds = true
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let destinationVC = segue.destination as? WeatherViewController {
                destinationVC.city = weather.city
                destinationVC.type = weather.type
                destinationVC.temp = weather.temp
                destinationVC.conditionImage = UIImage(systemName: weather.conditionImage)
        }
    }
}

