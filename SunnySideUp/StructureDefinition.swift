//
//  StructureDefinition.swift
//  Sunnysideup Test
//
//  Created by Nurul Srianda Putri on 11/04/22.
//

import Foundation
struct Menu {
    var menuTitle: String?
    var menuCookTime: String?
    var menuCalorie: String?
    var menuImageName: String?
    var menuDescription: String?
}

struct OneDayMenu {
    var dayNumber: Int?
    var dayMenuList: [Menu]?
}

struct Recipes {
    let recipeId: Int
    let recipeName: String
    let recipeDesc: String
    var cookTime: Int
    let calories: Int
    let imgString: String
    var ingredient: [Ingredient]?
    var instruction: [Instruction]?
    var preperation: [Preperation]?
    
}

//struct Meal {
//    let mealTitle: String
//    let mealPrep: String
//}

struct Preperation {
    let ingredientId: Int
    let prepTitle: String
//    var meal: [Meal]
}

struct Ingredient {
    let ingredientId: Int
    let title: String
    var isChecked: Bool
}

struct Instruction {
    let stepOrder: Int
    let stepDesc: String
    let isTimer: Bool
    let cookTime: Int
    let imageString: String
    var tickTimer: Int
}

struct WeeklyRecipe {
    let dayNumber: Int
    let recipeId: Int
}
class recipeData {

    static var recipeArray: [Recipes] = [
        Recipes(recipeId: 1, recipeName: "Sambal Balado", recipeDesc: "Sambal Balado merupakan makanan khas indonesia jama kolonial belanda", cookTime: 25, calories: 234, imgString: "none",
            ingredient: [
                Ingredient(ingredientId: 1,title: "Sawi", isChecked: false),
                Ingredient(ingredientId: 2, title: "Bawang", isChecked: false)
            ],
            instruction: [
                Instruction(stepOrder: 1, stepDesc: "Pertama masukan bawang goreng", isTimer: false, cookTime: 0, imageString: "", tickTimer: 0),
                Instruction(stepOrder: 2, stepDesc: "Rebus air biar mateng", isTimer: false, cookTime: 0, imageString: "", tickTimer: 120),
            ],
            preperation: [
                Preperation(ingredientId: 2, prepTitle: "Potong bawang kecil kecil"),
                Preperation(ingredientId: 1, prepTitle: "Potong sawi kecil kecil")
            ])
    ]
}

