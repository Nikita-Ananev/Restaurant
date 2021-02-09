//
//  DescriptionView.swift
//  Restaurant
//
//  Created by Никита Ананьев on 08.02.2021.
//

import UIKit

class DescriptionView: UIView {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var descriptionOfDish: UILabel!
    @IBOutlet weak var nameOfDish: UILabel!
    
    @IBOutlet weak var proteinsOfDish: UILabel!
    @IBOutlet weak var fatsOfDish: UILabel!
    @IBOutlet weak var carbohydratesOfDish: UILabel!
    @IBOutlet weak var caloriesOfDish: UILabel!
    
    @IBOutlet weak var priceOfDish: UILabel!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var orderButton: UIButton!
    
    func setupView(dishItem: Dish) {
        
        descriptionOfDish.text = dishItem.description
        nameOfDish.text = dishItem.name
        priceOfDish.text = "\(dishItem.price) руб"
        
        proteinsOfDish.text = dishItem.nutritionalValue.proteinsString
        fatsOfDish.text = dishItem.nutritionalValue.fatsString
        carbohydratesOfDish.text = dishItem.nutritionalValue.carbohydratesString
        caloriesOfDish.text = dishItem.nutritionalValue.caloriesString

        
        if let url = URL(string: dishItem.imageURL) {
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                guard let data = data, error == nil else { return }
                
                DispatchQueue.main.async { [weak self] in /// execute on main thread
                    self?.activityIndicator.stopAnimating()
                    self?.imageView.isHidden = false
                    self?.imageView.image = UIImage(data: data)
                }
            }
            
            task.resume()
        }
    }
}
