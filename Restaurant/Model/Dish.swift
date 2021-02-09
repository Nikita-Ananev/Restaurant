//
//  Dish.swift
//  Restaurant
//
//  Created by Никита Ананьев on 08.02.2021.
//

import Foundation

struct Dish {
    var id: Int
    var name: String
    var description: String
    var imageURL: String
    var price: Int

    
    var nutritionalValue: NutritonalValue
    
    init(dishData: DishData) {
        id = dishData.id
        name = dishData.name
        description = dishData.description
        imageURL = dishData.imageURL
        price = dishData.price
        
        nutritionalValue = NutritonalValue.init(proteins: dishData.nutrionalValue.proteins,
                                                fats: dishData.nutrionalValue.fats,
                                                carbohydrates: dishData.nutrionalValue.carbohydrates,
                                                calories: dishData.nutrionalValue.calories)
    }
}
