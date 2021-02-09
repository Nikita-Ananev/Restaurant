//
//  EnterPromocodeViewController.swift
//  Restaurant
//
//  Created by Никита Ананьев on 09.02.2021.
//

import UIKit

class EnterPromocodeViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var promocodeTextField: UITextField!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        promocodeTextField.delegate = self
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        NotificationCenter.default.post(name: Notification.Name("textFieldDidEndEditing"), object: textField.text)
    }
    
}
