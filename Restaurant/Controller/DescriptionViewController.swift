//
//  DescriptionViewController.swift
//  Restaurant
//
//  Created by Никита Ананьев on 08.02.2021.
//

import UIKit

class DescriptionViewController: UIViewController {
        
    var dish: Dish?
    var descriptionView: DescriptionView! {
        guard isViewLoaded else { return nil }
        return (view as! DescriptionView)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionView.setupView(dishItem: dish!)
        
    }

    
}
