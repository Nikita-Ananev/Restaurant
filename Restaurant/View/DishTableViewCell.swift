//
//  DishTableViewCell.swift
//  Restaurant
//
//  Created by Никита Ананьев on 08.02.2021.
//

import UIKit

class DishTableViewCell: UITableViewCell {
    
    @IBOutlet weak var dishLogoImageView: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func setupView(dish: Dish) {
        descriptionLabel.text = dish.description
        nameLabel.text = dish.name
        priceLabel.text = "\(dish.price) руб"
        dishLogoImageView.addCornerRadius(radius: 5.0, borderWidth: 0.5, borderColor: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))
        
        
        if let url = URL(string: dish.imageURL) {
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                guard let data = data, error == nil else { return }
                
                DispatchQueue.main.async { [weak self] in /// execute on main thread
                    self?.activityIndicator.stopAnimating()
                    self?.dishLogoImageView.image = UIImage(data: data)
                }
            }
            
            task.resume()
        }
        
    }

}
