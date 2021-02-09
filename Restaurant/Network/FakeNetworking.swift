//
//  FakeNetworking.swift
//  Restaurant
//
//  Created by Никита Ананьев on 08.02.2021.
//

import Foundation
class FakeNetworking {
    
    func loadJson(filename fileName: String,  completionHandler: @escaping (_ dishArray:[Dish]?)->(Void)) {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let json = try decoder.decode(DishDataArray.self, from: data)
                let arrayOfDishData = json.dishDataArray
                var dishArray = [Dish]()
                
                for dishData in arrayOfDishData {
                    let dish = Dish.init(dishData: dishData)
                    print(dish)
                    dishArray.append(dish)
                }
                completionHandler(dishArray)
            } catch {
                print("error:\(error)")
            }
        }
    }
}

