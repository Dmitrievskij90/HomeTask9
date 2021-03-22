//
//  WeatherViewController.swift
//  HomeTask9.2
//
//  Created by Konstantin Dmitrievskiy on 20.03.2021.
//

import UIKit

class WeatherViewController: UIViewController {
    
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var weatherView: UIView!
    
    var temp = ""
    var city = ""
    var type = ""
    var conditionImage = UIImage(systemName: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cityLabel.text = city
        temperatureLabel.text = temp
        descriptionLabel.text = type
        conditionImageView.image = conditionImage
    }
    
    override func viewWillLayoutSubviews() {
        weatherView.layer.cornerRadius = 25
        weatherView.clipsToBounds = true
    }


}
