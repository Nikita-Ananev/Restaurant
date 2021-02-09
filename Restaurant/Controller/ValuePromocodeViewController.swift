//
//  ValuePromocodeViewController.swift
//  Restaurant
//
//  Created by Никита Ананьев on 09.02.2021.
//

import UIKit

class ValuePromocodeViewController: UIViewController {
 
    
    @IBOutlet weak var promocodeLabel: UILabel!
    var vc: EnterPromocodeViewController?
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(self.setTitle(notification:)), name: Notification.Name("textFieldDidEndEditing"), object: nil)
        
    }
    
    @objc func setTitle(notification: Notification) {
        
        promocodeLabel.text = notification.object as? String
    }
}
