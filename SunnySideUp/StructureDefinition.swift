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
    var amount: Double
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
    var status: Int
}
class recipeData {
    
    static var ingredientArray: [Ingredient] = [
        Ingredient(ingredientId: 1, title: "Chicken Breast", isChecked: false, amount: 0),
        Ingredient(ingredientId: 2, title: "Tempeh", isChecked: false, amount: 0),
        Ingredient(ingredientId: 3, title: "White Onion", isChecked: false, amount: 0),
        Ingredient(ingredientId: 4, title: "Green Onion", isChecked: false, amount: 0),
        Ingredient(ingredientId: 5, title: "Vegetable Oil", isChecked: false, amount: 0),
        Ingredient(ingredientId: 6, title: "Soy Sauce", isChecked: false, amount: 0),
        Ingredient(ingredientId: 7, title: "Cooked Rice", isChecked: false, amount: 0),
        Ingredient(ingredientId: 8, title: "Sesame Oil", isChecked: false, amount: 0),
        Ingredient(ingredientId: 9, title: "Frozen Peas and Carrots", isChecked: false, amount: 0),
        Ingredient(ingredientId: 10, title: "Egg", isChecked: false, amount: 0),
        Ingredient(ingredientId: 11, title: "Garlic", isChecked: false, amount: 0),
        Ingredient(ingredientId: 12, title: "Water", isChecked: false, amount: 0),
        Ingredient(ingredientId: 13, title: "Galangal Root", isChecked: false, amount: 0),
        Ingredient(ingredientId: 14, title: "Bay Leaf", isChecked: false, amount: 0),
        Ingredient(ingredientId: 15, title: "Sweet Soy Sauce", isChecked: false, amount: 0),
        Ingredient(ingredientId: 16, title: "Salt", isChecked: false, amount: 0),
        Ingredient(ingredientId: 17, title: "Sugar", isChecked: false, amount: 0),
        Ingredient(ingredientId: 18, title: "Pepper", isChecked: false, amount: 0),
        Ingredient(ingredientId: 19, title: "Bay Leaf", isChecked: false, amount: 0),
        Ingredient(ingredientId: 20, title: "Chicken Broth", isChecked: false, amount: 0),
        Ingredient(ingredientId: 21, title: "Anchovy", isChecked: false, amount: 0),
        Ingredient(ingredientId: 22, title: "Chili Pepper", isChecked: false, amount: 0),
        Ingredient(ingredientId: 23, title: "Shallot", isChecked: false, amount: 0),
        Ingredient(ingredientId: 24, title: "Teriyaki Sauce", isChecked: false, amount: 0),
        Ingredient(ingredientId: 25, title: "Lime Leaf", isChecked: false, amount: 0),
        Ingredient(ingredientId: 26, title: "Red Cayenne Pepper", isChecked: false, amount: 0),
        Ingredient(ingredientId: 27, title: "Aromatic Ginger", isChecked: false, amount: 0),
        Ingredient(ingredientId: 28, title: "Mushroom broth", isChecked: false, amount: 0),
        Ingredient(ingredientId: 29, title: "Coriander", isChecked: false, amount: 0),
        Ingredient(ingredientId: 30, title: "Onion", isChecked: false, amount: 0),
        Ingredient(ingredientId: 31, title: "Broccoli", isChecked: false, amount: 0),
        Ingredient(ingredientId: 32, title: "Cheddar", isChecked: false, amount: 0),
        Ingredient(ingredientId: 33, title: "Olive Oil", isChecked: false, amount: 0),
        Ingredient(ingredientId: 34, title: "Salted Egg Yolk", isChecked: false, amount: 0),
        Ingredient(ingredientId: 35, title: "Wheat Flour", isChecked: false, amount: 0),
        Ingredient(ingredientId: 36, title: "All Purpose Flour", isChecked: false, amount: 0),
        Ingredient(ingredientId: 37, title: "Sago Flour", isChecked: false, amount: 0),
        Ingredient(ingredientId: 38, title: "Full Cream Milk", isChecked: false, amount: 0),
        Ingredient(ingredientId: 39, title: "Tempeh Seasoning", isChecked: false, amount: 0),

    ]

    static var recipeArray: [Recipes] = [
            Recipes(recipeId: 1, recipeName: "Chicken Fried Rice", recipeDesc: "Long rice cooked together with moist and tender chicken with flavorful peas and carrots.", cookTime: 20, calories: 200, imgString: "chicken-fried-rice",
                ingredient: [
                    Ingredient(ingredientId: 1,title: "55 grams Chicken", isChecked: false, amount: 55),
                    Ingredient(ingredientId: 3, title: "⅛  small white onion", isChecked: false, amount: 0.125),
                    Ingredient(ingredientId: 4,title: "¼  tbsp green onions", isChecked: false, amount: 0.25),
                    Ingredient(ingredientId: 5, title: "⅛  tbsp vegetable oil", isChecked: false, amount: 0.125),
                    Ingredient(ingredientId: 6,title: "½  tbsp soy sauce", isChecked: false, amount: 0.5),
                    Ingredient(ingredientId: 7, title: "⅜  cups cooked rice ", isChecked: false, amount: 0.375),
                    Ingredient(ingredientId: 8,title: "¼  tbsp sesame oil", isChecked: false, amount: 0.25),
                    Ingredient(ingredientId: 9, title: "⅛  cup frozen peas and carrots", isChecked: false, amount: 0.125),
                    Ingredient(ingredientId: 10, title: "¼  large eggs lightly beaten", isChecked: false, amount: 0.25),
                ],
                instruction: [
                    Instruction(stepOrder: 1, stepDesc: "In a large skillet or wok, add vegetable oil and soy sauce. Add in the chicken and cook until lightly brown and cooked throughout. Remove and set aside.", isTimer: false, cookTime: 0, imageString: "chicken-fried-rice-s1", tickTimer: 0),
                    Instruction(stepOrder: 2, stepDesc: "Pour sesame oil in the bottom. Add white onion and peas and carrots and fry until tender.", isTimer: false, cookTime: 0, imageString: "chicken-fried-rice-s2", tickTimer: 0),
                    Instruction(stepOrder: 3, stepDesc: "Slide the onion, peas and carrots to the side, and pour the beaten eggs onto the other side. Using a spatula, scramble the eggs. Once cooked, mix the eggs with the vegetable mix.", isTimer: false, cookTime: 0, imageString: "chicken-fried-rice-s3", tickTimer: 0),
                    Instruction(stepOrder: 4, stepDesc: "Add the rice and chicken to the veggie and egg mixture. Pour the soy sauce on top. Stir and fry the rice and veggie mixture until heated through and combined. Add chopped green onions if desired.", isTimer: false, cookTime: 0, imageString: "chicken-fried-rice-s4", tickTimer: 0)
                ],
                preperation: [
                    Preperation(ingredientId: 1, prepTitle: "Cut into small pieces"),
                    Preperation(ingredientId: 3, prepTitle: "Chop"),
                    Preperation(ingredientId: 4, prepTitle: "Chop")
                ]),
            
            Recipes(recipeId: 2, recipeName: "Orek Tempe", recipeDesc: "Tempeh which is cut into small pieces and cooked with sugar and sweet soy sauce.", cookTime: 15, calories: 175, imgString: "tempe-orek",
                ingredient: [
                    Ingredient(ingredientId: 2,title: "300 grams tempeh", isChecked: false, amount: 300),
                    Ingredient(ingredientId: 11, title: "3 cloves garlic", isChecked: false, amount: 3),
                    Ingredient(ingredientId: 12,title: "200 ml water", isChecked: false, amount: 200),
                    Ingredient(ingredientId: 13, title: "2 cm galangal root", isChecked: false, amount: 2),
                    Ingredient(ingredientId: 14,title: "3 Bay leaf", isChecked: false, amount: 3),
                    Ingredient(ingredientId: 15, title: "2 tbsp sweet soy sauce", isChecked: false, amount: 2),
                    Ingredient(ingredientId: 16,title: "½ tsp salt", isChecked: false, amount: 0.5),
                    Ingredient(ingredientId: 17, title: "½ tsp sugar", isChecked: false, amount: 0.5)
                ],
                instruction: [
                    Instruction(stepOrder: 1, stepDesc: "Saute onions, galangal, and salam until the aroma comes out.", isTimer: false, cookTime: 0, imageString: "tempe-orek-s1", tickTimer: 0),
                    Instruction(stepOrder: 2, stepDesc: "Add the tempeh and add soy sauce, salt and sugar.", isTimer: false, cookTime: 0, imageString: "tempe-orek-s2", tickTimer: 0),
                    Instruction(stepOrder: 3, stepDesc: "Add water then stir until the spices absorb and dry.", isTimer: false, cookTime: 0, imageString: "tempe-orek-s3", tickTimer: 0)
                ],
                preperation: [
                    Preperation(ingredientId: 2, prepTitle: "Cut lengthwise"),
                    Preperation(ingredientId: 11, prepTitle: "Thinly sliced")
                ]),
            
            Recipes(recipeId: 3, recipeName: "Instant Pot Shredded Chicken", recipeDesc: "Shredded chicken that is seasoned and moist, and easy to shred.", cookTime: 25, calories: 170, imgString: "instant-pot-shredded-chicken-1",
                ingredient: [
                    Ingredient(ingredientId: 1,title: "113 grams boneless skinless chicken breasts", isChecked: false, amount: 113),
                    Ingredient(ingredientId: 12, title: "30 mL water or chicken broth", isChecked: false, amount: 30),
                    Ingredient(ingredientId: 16,title: "Salt", isChecked: false, amount: 0),
                    Ingredient(ingredientId: 19, title: "Pepper", isChecked: false, amount: 0)
                ],
                instruction: [
                    Instruction(stepOrder: 1, stepDesc: "First, pour 1/2 cup of water onto the bottom of your Instant Pot and then place the trivet on top of the water.", isTimer: false, cookTime: 0, imageString: "instant-pot-shredded-chicken-s1", tickTimer: 0),
                    Instruction(stepOrder: 2, stepDesc: "Optionally season your chicken breast with salt and pepper, to taste.", isTimer: false, cookTime: 0, imageString: "instant-pot-shredded-chicken-s2", tickTimer: 0),
                    Instruction(stepOrder: 3, stepDesc: "Place chicken breast on top of the trivet and close Instant Pot.", isTimer: false, cookTime: 0, imageString: "instant-pot-shredded-chicken-s34", tickTimer: 0),
                    Instruction(stepOrder: 4, stepDesc: "If you are using thawed chicken breast, cook on high pressure for 8-10 minutes. If you are using frozen chicken breast, cook on high pressure for 18-20 minutes ", isTimer: false, cookTime: 0, imageString: "instant-pot-shredded-chicken-s34", tickTimer: 0),
                    Instruction(stepOrder: 5, stepDesc: "When the timer goes off, quick release the Instant Pot. Use a meat thermometer to make sure the thickest part of your chicken breast is at least 165ºF. If it’s not, continue cooking chicken breast in increments of 2 minutes.", isTimer: false, cookTime: 0, imageString: "instant-pot-shredded-chicken-s5", tickTimer: 0),
                    Instruction(stepOrder: 6, stepDesc: "Once fully cooked, use 2 forks to shred the chicken breast.", isTimer: false, cookTime: 0, imageString: "instant-pot-shredded-chicken-s6", tickTimer: 0),
                ],
                preperation: [
                    
                ]),
            
            Recipes(recipeId: 4, recipeName: "Sambal Tempe Teri", recipeDesc: "Stir-fried tempeh with anchovies, spices, and peanuts. ", cookTime: 15, calories: 34, imgString: "sambal-tempe-teri",
                ingredient: [
                    Ingredient(ingredientId: 2,title: "300 grams tempeh", isChecked: false, amount: 300),
                    Ingredient(ingredientId: 21, title: "1 ons anchovy", isChecked: false, amount: 1),
                    Ingredient(ingredientId: 12,title: "200 ml water", isChecked: false, amount: 200),
                    Ingredient(ingredientId: 22, title: "5 red chili pepper", isChecked: false, amount: 5),
                    Ingredient(ingredientId: 11,title: "3 cloves garlic", isChecked: false, amount: 3),
                    Ingredient(ingredientId: 23, title: "3 cloves shallot", isChecked: false, amount: 3),
                    Ingredient(ingredientId: 16,title: "Salt", isChecked: false, amount: 0),
                    Ingredient(ingredientId: 17, title: "Sugar", isChecked: false, amount: 0)
                ],
                instruction: [
                    Instruction(stepOrder: 1, stepDesc: "Fry tempeh and anchovies until cooked, then drain.", isTimer: false, cookTime: 0, imageString: "sambal-tempe-teri-s1", tickTimer: 0),
                    Instruction(stepOrder: 2, stepDesc: "Puree the onion, garlic, chili, sugar, and salt to taste.", isTimer: false, cookTime: 0, imageString: "sambal-tempe-teri-s2", tickTimer: 0),
                    Instruction(stepOrder: 3, stepDesc: "Saute the spices until fragrant then add the tempeh and anchovies.", isTimer: false, cookTime: 0, imageString: "sambal-tempe-teri-s3", tickTimer: 0),
                    Instruction(stepOrder: 4, stepDesc: "Stir and wait for the spices until absorbed.", isTimer: false, cookTime: 0, imageString: "sambal-tempe-teri-s4", tickTimer: 0)
                ],
                preperation: [
                    Preperation(ingredientId: 2, prepTitle: "Cut lengthwise")
                ]),
            
            Recipes(recipeId: 5, recipeName: "Grilled Teriyaki Chicken", recipeDesc: "Tender juicy chicken is soaked in the best Teriyaki Sauce then grilled to perfection.", cookTime: 15, calories: 173, imgString: "grilled-teriyaki-chicken",
                ingredient: [
                    Ingredient(ingredientId: 1,title: "150 grams boneless skinless chicken breasts", isChecked: false, amount: 0),
                    Ingredient(ingredientId: 24, title: "25 mL teriyaki sauce ", isChecked: false, amount: 0),
                    Ingredient(ingredientId: 4, title: "Green onions and sesame seeds for garnish", isChecked: false, amount: 0)
                ],
                instruction: [
                    Instruction(stepOrder: 1, stepDesc: "In a medium sized bowl add the chicken breasts. Add the prepared teriyaki sauce reserving ¼ cup.", isTimer: false, cookTime: 0, imageString: "grilled-teriyaki-chicken-s1", tickTimer: 0),
                    Instruction(stepOrder: 2, stepDesc: "Preheat your grill to high heat. Add the chicken to the grill and cook on each side 3-4 minutes or until cooked through and no longer pink.", isTimer: false, cookTime: 0, imageString: "grilled-teriyaki-chicken-s2", tickTimer: 0),
                    Instruction(stepOrder: 3, stepDesc: "Baste the chicken with reserved glaze and put on a plate and serve.", isTimer: false, cookTime: 0, imageString: "grilled-teriyaki-chicken-s3", tickTimer: 0)
                ],
                preperation: [
                    
                ]),
            
            Recipes(recipeId: 6, recipeName: "Tempe Mendol", recipeDesc: "Tempeh which is crushed and cooked with spices with a crunchy texture on the outside and soft on the inside.", cookTime: 10, calories: 34, imgString: "tempe-mendol",
                ingredient: [
                    Ingredient(ingredientId: 2,title: "300 grams tempeh", isChecked: false, amount: 300),
                    Ingredient(ingredientId: 25, title: "3 lime leaves", isChecked: false, amount: 3),
                    Ingredient(ingredientId: 23,title: "3 cloves shallot", isChecked: false, amount: 3),
                    Ingredient(ingredientId: 11, title: "3 cloves garlic", isChecked: false, amount: 3),
                    Ingredient(ingredientId: 26,title: "4 red cayenne pepper", isChecked: false, amount: 4),
                    Ingredient(ingredientId: 27, title: "2 cm aromatic ginger", isChecked: false, amount: 2),
                    Ingredient(ingredientId: 16,title: "2 tsp salt", isChecked: false, amount: 2),
                    Ingredient(ingredientId: 17, title: "½ tsp sugar", isChecked: false, amount: 0.5),
                    Ingredient(ingredientId: 28,title: "½ tsp mushroom broth", isChecked: false, amount: 0.5),
                    Ingredient(ingredientId: 29, title: "½ tsp coriander", isChecked: false, amount: 0.5)
                ],
                instruction: [
                    Instruction(stepOrder: 1, stepDesc: "Puree the onion, garlic, red chili, coriander, and kencur.", isTimer: false, cookTime: 0, imageString: "tempe-mendol-s1", tickTimer: 0),
                    Instruction(stepOrder: 2, stepDesc: "Mix the ground spices with the tempeh and add the lime leaves, mushroom broth, sugar, and salt.", isTimer: false, cookTime: 0, imageString: "tempe-mendol-s2", tickTimer: 0),
                    Instruction(stepOrder: 3, stepDesc: "Knead the dough with your hands, then shape it into an oval.", isTimer: false, cookTime: 0, imageString: "tempe-mendol-s3", tickTimer: 0),
                    Instruction(stepOrder: 4, stepDesc: "Fry over medium heat until the tempeh is dry.", isTimer: false, cookTime: 0, imageString: "tempe-mendol-s4", tickTimer: 0)
                ],
                preperation: [
                    Preperation(ingredientId: 2, prepTitle: "Crumble")
                ]),
            
            Recipes(recipeId: 7, recipeName: "One Pan Cheesy Chicken with Broccoli and Rice", recipeDesc: "This was a fantastic one pan meal that was full of flavor.", cookTime: 30, calories: 368, imgString: "cheesy-chicken",
                ingredient: [
                    Ingredient(ingredientId: 1,title: "75 grams boneless skinless chicken breasts", isChecked: false, amount: 75),
                    Ingredient(ingredientId: 30, title: "1 tbsp Onion", isChecked: false, amount: 1),
                    Ingredient(ingredientId: 11,title: "⅙  clove garlic", isChecked: false, amount: 0.167),
                    Ingredient(ingredientId: 31, title: "⅔  Cups Broccoli Florets", isChecked: false, amount: 0.67),
                    Ingredient(ingredientId: 32,title: "⅕  Cup Sharp Cheddar", isChecked: false, amount: 0.2),
                    Ingredient(ingredientId: 33, title: "⅙  Tablespoon Olive Oil", isChecked: false, amount: 0.67),
                    Ingredient(ingredientId: 16,title: "Salt", isChecked: false, amount: 0),
                    Ingredient(ingredientId: 18, title: "Pepper", isChecked: false, amount: 0),
                    Ingredient(ingredientId: 7,title: "⅙  cup white rice ", isChecked: false, amount: 0.67),
                    Ingredient(ingredientId: 12, title: "80 mL water or Chicken broth", isChecked: false, amount: 80)
                ],
                instruction: [
                    Instruction(stepOrder: 1, stepDesc: "In a large skillet over medium heat, add olive oil and chicken pieces. Sprinkle with salt and pepper and cook about 5-6 minutes until no longer pink and cooked throughout. Remove from pan and set aside.", isTimer: false, cookTime: 0, imageString: "cheesy-chicken-s1", tickTimer: 0),
                    Instruction(stepOrder: 2, stepDesc: "Reduce pan heat to medium low add onion and garlic to a pan. Saute until tender. Add the rice and continue to toast the rice about a minute or two. Pour in the chicken stock and simmer with the lid on for 15 minutes.", isTimer: false, cookTime: 0, imageString: "cheesy-chicken-s2", tickTimer: 0),
                    Instruction(stepOrder: 3, stepDesc: "After the rice has been cooking for about 8 minutes add the broccoli to the rice and put the lid back on. This will steam the broccoli.", isTimer: false, cookTime: 0, imageString: "cheesy-chicken-s3", tickTimer: 0),
                    Instruction(stepOrder: 4, stepDesc: "Once the rice is finished cooking, add salt, and pepper. Stir to combine. Add the chicken back and stir. Top with the cheese and put the lid back on for a few minutes to let the cheese melt. Stir the melted cheese in and serve.", isTimer: false, cookTime: 0, imageString: "cheesy-chicken-s4", tickTimer: 0)
                ],
                preperation: [
                    Preperation(ingredientId: 1, prepTitle: "Cut into cubes"),
                    Preperation(ingredientId: 30, prepTitle: "Cut into dices"),
                    Preperation(ingredientId: 11, prepTitle: "Mince"),
                    Preperation(ingredientId: 31, prepTitle: "Chop"),
                    Preperation(ingredientId: 32, prepTitle: "Shred")
                ]),
            
            Recipes(recipeId: 8, recipeName: "Tempe Salted Egg", recipeDesc: "Tempeh fried and cooked with salted egg sauce.", cookTime: 20, calories: 72, imgString: "tempe-salted-egg",
                ingredient: [
                    Ingredient(ingredientId: 2,title: "300 grams tempeh", isChecked: false, amount: 300),
                    Ingredient(ingredientId: 11, title: "3 cloves garlic", isChecked: false, amount: 3),
                    Ingredient(ingredientId: 34,title: "3 salted egg yolk", isChecked: false, amount: 3),
                    Ingredient(ingredientId: 35, title: "4 tbsp wheat flour", isChecked: false, amount: 4),
                    Ingredient(ingredientId: 36,title: "3 tbsp all-purpose flour", isChecked: false, amount: 3),
                    Ingredient(ingredientId: 37, title: "2 tbsp sago flour", isChecked: false, amount: 2),
                    Ingredient(ingredientId: 38,title: "½ cup full cream milk", isChecked: false, amount: 0.5),
                    Ingredient(ingredientId: 39, title: "1 sachet of fried tempeh seasoning", isChecked: false, amount: 0),
                    Ingredient(ingredientId: 16,title: "Salt", isChecked: false, amount: 0)
                ],
                instruction: [
                    Instruction(stepOrder: 1, stepDesc: "Dissolve the mixed spices with enough water, then soak the tempeh in it for a few minutes, then drain.", isTimer: false, cookTime: 0, imageString: "tempe-salted-egg-s1", tickTimer: 0),
                    Instruction(stepOrder: 2, stepDesc: "Roll the tempeh into a mixture of flour, seasoning flour, and sago flour.", isTimer: false, cookTime: 0, imageString: "tempe-salted-egg-s2", tickTimer: 0),
                    Instruction(stepOrder: 3, stepDesc: "Fry tempeh in hot oil until dry and cooked.", isTimer: false, cookTime: 0, imageString: "tempe-salted-egg-s3", tickTimer: 0),
                    Instruction(stepOrder: 4, stepDesc: "Sauté the garlic until fragrant, then add the egg yolks and milk. Add salt to taste and stir until cooked.", isTimer: false, cookTime: 0, imageString: "tempe-salted-egg-s4", tickTimer: 0),
                    Instruction(stepOrder: 5, stepDesc: "Serve fried tempeh with salted egg sauce.", isTimer: false, cookTime: 0, imageString: "tempe-salted-egg-s5", tickTimer: 0)
                ],
                preperation: [
                    Preperation(ingredientId: 2, prepTitle: "Cut into dices"),
                    Preperation(ingredientId: 3, prepTitle: "Mince"),
                    Preperation(ingredientId: 34, prepTitle: "Mash")
                ]),
            
        ]
    
    static var weeklyRecipeArray: [WeeklyRecipe] = [

    ]
    
    static func setWeeklyRecipe(dayNumber: Int, recipeId: Int){
        recipeData.weeklyRecipeArray.append(WeeklyRecipe(dayNumber: dayNumber, recipeId: recipeId, status: 0))
    }
    
}

