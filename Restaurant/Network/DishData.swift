//
//  DishData.swift
//  Restaurant
//
//  Created by Никита Ананьев on 09.02.2021.
//

import Foundation

struct DishDataArray: Codable {
    let dishDataArray: [DishData]
}
struct DishData: Codable {
    let id: Int
    let name: String
    let description: String
    let imageURL: String
    let price: Int
    
    let nutrionalValue: NutrionalValueData
}

struct NutrionalValueData: Codable {
    let proteins, fats, carbohydrates: Double
    let calories: Int
}
