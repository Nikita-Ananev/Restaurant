//
//  MainMenuView.swift
//  Restaurant
//
//  Created by Никита Ананьев on 08.02.2021.
//

import UIKit

class MainMenuView: UIView {
    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var orderButton: UIButton!
    @IBOutlet weak var promocodeButton: UIButton!
        
    func setupView() {
        logoImageView.addCornerRadius(radius: 5.0, borderWidth: 0.5, borderColor: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))
        
    }


}
