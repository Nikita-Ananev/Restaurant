//
//  NutritonalValue.swift
//  Restaurant
//
//  Created by Никита Ананьев on 08.02.2021.
//

import Foundation
struct NutritonalValue {
    
    var proteinsString: String
    var fatsString: String
    var carbohydratesString: String
    var caloriesString: String
    
    init(proteins: Double, fats: Double, carbohydrates: Double, calories: Int) {
        proteinsString = "Белки \(proteins) г"
        fatsString = "Жиры \(fats) г"
        carbohydratesString = "Углеводы \(carbohydrates) г"
        caloriesString = "Калорий \(calories) г"
    }
}
