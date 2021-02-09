//
//  DishesTableViewController.swift
//  Restaurant
//
//  Created by Никита Ананьев on 08.02.2021.
//

import UIKit


class DishesTableViewController: UITableViewController {
    var network = FakeNetworking()
    var dishesList: [Dish]?
    var dishToTransfer: Dish?
    
 //   weak var dishDelegate: DishesTableViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        network.loadJson(filename: "example_1") {[weak self] dish in
            self?.dishesList = dish
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dishesList?.count ?? 0
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DishTableViewCell", for: indexPath) as! DishTableViewCell
        guard let dishItem = dishesList?[indexPath.row] else { return cell }
        
        cell.setupView(dish: dishItem)
        
        return cell
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        dishToTransfer = dishesList?[indexPath.row]
        performSegue(withIdentifier: "toDescriptionViewController", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? DescriptionViewController {
            guard let dish = dishToTransfer else { return }
            vc.dish = dish
        }
    }


}
