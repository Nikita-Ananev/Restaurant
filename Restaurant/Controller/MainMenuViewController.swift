//
//  ViewController.swift
//  Restaurant
//
//  Created by Никита Ананьев on 08.02.2021.
//

import UIKit


class MainMenuViewController: UIViewController {

    var mainView: MainMenuView! {
        guard isViewLoaded else { return nil }
        return (view as! MainMenuView)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.setupView()
    }


}

