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
    var status: Int
}
class recipeData {

    static var recipeArray: [Recipes] = [
            Recipes(recipeId: 1, recipeName: "Chicken Fried Rice", recipeDesc: "Long rice cooked together with moist and tender chicken with flavorful peas and carrots.", cookTime: 20, calories: 200, imgString: "chicken-fried-rice",
                ingredient: [
                    Ingredient(ingredientId: 1,title: "55 grams Chicken, cut into small pieces", isChecked: false),
                    Ingredient(ingredientId: 2, title: "⅛  small white onion, chopped", isChecked: false),
                    Ingredient(ingredientId: 3,title: "¼  Tablespoons green onions, chopped ", isChecked: false),
                    Ingredient(ingredientId: 4, title: "⅛  Tablespoon vegetable oil", isChecked: false),
                    Ingredient(ingredientId: 5,title: "½  Tablespoons soy sauce", isChecked: false),
                    Ingredient(ingredientId: 6, title: "⅜  cups cooked rice ", isChecked: false),
                    Ingredient(ingredientId: 7,title: "¼  Tablespoons sesame oil", isChecked: false),
                    Ingredient(ingredientId: 8, title: "⅛  cup frozen peas and carrots thawed", isChecked: false),
                    Ingredient(ingredientId: 9, title: "¼  large eggs lightly beaten", isChecked: false),
                ],
                instruction: [
                    Instruction(stepOrder: 1, stepDesc: "In a large skillet or wok, add vegetable oil and soy sauce. Add in the chicken and cook until lightly brown and cooked throughout. Remove and set aside.", isTimer: false, cookTime: 0, imageString: "chicken-fried-rice-s1", tickTimer: 0),
                    Instruction(stepOrder: 2, stepDesc: "Pour sesame oil in the bottom. Add white onion and peas and carrots and fry until tender.", isTimer: false, cookTime: 0, imageString: "chicken-fried-rice-s2", tickTimer: 0),
                    Instruction(stepOrder: 3, stepDesc: "Slide the onion, peas and carrots to the side, and pour the beaten eggs onto the other side. Using a spatula, scramble the eggs. Once cooked, mix the eggs with the vegetable mix.", isTimer: false, cookTime: 0, imageString: "chicken-fried-rice-s3", tickTimer: 0),
                    Instruction(stepOrder: 4, stepDesc: "Add the rice and chicken to the veggie and egg mixture. Pour the soy sauce on top. Stir and fry the rice and veggie mixture until heated through and combined. Add chopped green onions if desired.", isTimer: false, cookTime: 0, imageString: "chicken-fried-rice-s4", tickTimer: 0)
                ],
                preperation: [
                    Preperation(ingredientId: 1, prepTitle: "Cut into small pieces"),
                    Preperation(ingredientId: 2, prepTitle: "Chop"),
                    Preperation(ingredientId: 3, prepTitle: "Chop")
                ]),
            
            Recipes(recipeId: 2, recipeName: "Orek Tempe", recipeDesc: "Tempeh which is cut into small pieces and cooked with sugar and sweet soy sauce.", cookTime: 15, calories: 175, imgString: "tempe-orek",
                ingredient: [
                    Ingredient(ingredientId: 1,title: "300 grams tempeh, cut lengthwise", isChecked: false),
                    Ingredient(ingredientId: 2, title: "3 cloves garlic, thinly sliced", isChecked: false),
                    Ingredient(ingredientId: 3,title: "200 ml water", isChecked: false),
                    Ingredient(ingredientId: 4, title: "2 cm galangal root", isChecked: false),
                    Ingredient(ingredientId: 5,title: "3 Bay leaf", isChecked: false),
                    Ingredient(ingredientId: 6, title: "2 tbsp sweet soy sauce", isChecked: false),
                    Ingredient(ingredientId: 7,title: "½ tsp salt", isChecked: false),
                    Ingredient(ingredientId: 8, title: "½ tsp sugar", isChecked: false)
                ],
                instruction: [
                    Instruction(stepOrder: 1, stepDesc: "Saute onions, galangal, and salam until the aroma comes out.", isTimer: false, cookTime: 0, imageString: "tempe-orek-s1", tickTimer: 0),
                    Instruction(stepOrder: 2, stepDesc: "Add the tempeh and add soy sauce, salt and sugar.", isTimer: false, cookTime: 0, imageString: "tempe-orek-s2", tickTimer: 0),
                    Instruction(stepOrder: 3, stepDesc: "Add water then stir until the spices absorb and dry.", isTimer: false, cookTime: 0, imageString: "tempe-orek-s3", tickTimer: 0)
                ],
                preperation: [
                    Preperation(ingredientId: 1, prepTitle: "Cut lengthwise"),
                    Preperation(ingredientId: 2, prepTitle: "Thinly sliced")
                ]),
            
            Recipes(recipeId: 3, recipeName: "Instant Pot Shredded Chicken", recipeDesc: "Shredded chicken that is seasoned and moist, and easy to shred.", cookTime: 25, calories: 170, imgString: "instant-pot-shredded-chicken-1",
                ingredient: [
                    Ingredient(ingredientId: 1,title: "113 grams boneless skinless chicken breasts", isChecked: false),
                    Ingredient(ingredientId: 2, title: "30 mL water or chicken broth", isChecked: false),
                    Ingredient(ingredientId: 3,title: "Salt", isChecked: false),
                    Ingredient(ingredientId: 4, title: "Pepper", isChecked: false)
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
                    Ingredient(ingredientId: 1,title: "300 grams tempeh, cut lengthwise", isChecked: false),
                    Ingredient(ingredientId: 2, title: "1 ons anchovy", isChecked: false),
                    Ingredient(ingredientId: 3,title: "200 ml water", isChecked: false),
                    Ingredient(ingredientId: 4, title: "5 red chili pepper", isChecked: false),
                    Ingredient(ingredientId: 5,title: "3 cloves garlic", isChecked: false),
                    Ingredient(ingredientId: 6, title: "3 cloves shallot", isChecked: false),
                    Ingredient(ingredientId: 7,title: "Salt", isChecked: false),
                    Ingredient(ingredientId: 8, title: "Sugar", isChecked: false)
                ],
                instruction: [
                    Instruction(stepOrder: 1, stepDesc: "Fry tempeh and anchovies until cooked, then drain.", isTimer: false, cookTime: 0, imageString: "sambal-tempe-teri-s1", tickTimer: 0),
                    Instruction(stepOrder: 2, stepDesc: "Puree the onion, garlic, chili, sugar, and salt to taste.", isTimer: false, cookTime: 0, imageString: "sambal-tempe-teri-s2", tickTimer: 0),
                    Instruction(stepOrder: 3, stepDesc: "Saute the spices until fragrant then add the tempeh and anchovies.", isTimer: false, cookTime: 0, imageString: "sambal-tempe-teri-s3", tickTimer: 0),
                    Instruction(stepOrder: 4, stepDesc: "Stir and wait for the spices until absorbed.", isTimer: false, cookTime: 0, imageString: "sambal-tempe-teri-s4", tickTimer: 0)
                ],
                preperation: [
                    Preperation(ingredientId: 1, prepTitle: "Cut lengthwise")
                ]),
            
            Recipes(recipeId: 5, recipeName: "Grilled Teriyaki Chicken", recipeDesc: "Tender juicy chicken is soaked in the best Teriyaki Sauce then grilled to perfection.", cookTime: 15, calories: 173, imgString: "grilled-teriyaki-chicken",
                ingredient: [
                    Ingredient(ingredientId: 1,title: "150 grams boneless skinless chicken breasts", isChecked: false),
                    Ingredient(ingredientId: 2, title: "25 mL teriyaki sauce ", isChecked: false),
                    Ingredient(ingredientId: 3,title: "Green onions and sesame seeds for garnish", isChecked: false)
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
                    Ingredient(ingredientId: 1,title: "300 grams tempeh, crumbled", isChecked: false),
                    Ingredient(ingredientId: 2, title: "3 lime leaves", isChecked: false),
                    Ingredient(ingredientId: 3,title: "3 cloves shallot", isChecked: false),
                    Ingredient(ingredientId: 4, title: "3 cloves garlic", isChecked: false),
                    Ingredient(ingredientId: 5,title: "4 red cayenne pepper", isChecked: false),
                    Ingredient(ingredientId: 6, title: "2 cm aromatic ginger", isChecked: false),
                    Ingredient(ingredientId: 7,title: "2 tsp salt", isChecked: false),
                    Ingredient(ingredientId: 8, title: "½ tsp sugar", isChecked: false),
                    Ingredient(ingredientId: 9,title: "½ tsp mushroom broth", isChecked: false),
                    Ingredient(ingredientId: 10, title: "½ tsp coriander", isChecked: false)
                ],
                instruction: [
                    Instruction(stepOrder: 1, stepDesc: "Puree the onion, garlic, red chili, coriander, and kencur.", isTimer: false, cookTime: 0, imageString: "tempe-mendol-s1", tickTimer: 0),
                    Instruction(stepOrder: 2, stepDesc: "Mix the ground spices with the tempeh and add the lime leaves, mushroom broth, sugar, and salt.", isTimer: false, cookTime: 0, imageString: "tempe-mendol-s2", tickTimer: 0),
                    Instruction(stepOrder: 3, stepDesc: "Knead the dough with your hands, then shape it into an oval.", isTimer: false, cookTime: 0, imageString: "tempe-mendol-s3", tickTimer: 0),
                    Instruction(stepOrder: 4, stepDesc: "Fry over medium heat until the tempeh is dry.", isTimer: false, cookTime: 0, imageString: "tempe-mendol-s4", tickTimer: 0)
                ],
                preperation: [
                    Preperation(ingredientId: 1, prepTitle: "Crumble")
                ]),
            
            Recipes(recipeId: 7, recipeName: "One Pan Cheesy Chicken with Broccoli and Rice", recipeDesc: "This was a fantastic one pan meal that was full of flavor.", cookTime: 30, calories: 368, imgString: "cheesy-chicken",
                ingredient: [
                    Ingredient(ingredientId: 1,title: "75 grams boneless skinless chicken breasts, cut into cubes", isChecked: false),
                    Ingredient(ingredientId: 2, title: "1 tablespoon Onion diced", isChecked: false),
                    Ingredient(ingredientId: 3,title: "⅙  clove garlic minced", isChecked: false),
                    Ingredient(ingredientId: 4, title: "⅔  Cups Broccoli Florets chopped", isChecked: false),
                    Ingredient(ingredientId: 5,title: "⅕  Cup Sharp Cheddar shredded", isChecked: false),
                    Ingredient(ingredientId: 6, title: "⅙  Tablespoon Olive Oil", isChecked: false),
                    Ingredient(ingredientId: 7,title: "Salt", isChecked: false),
                    Ingredient(ingredientId: 8, title: "Pepper", isChecked: false),
                    Ingredient(ingredientId: 9,title: "⅙  cup white rice ", isChecked: false),
                    Ingredient(ingredientId: 10, title: "80 mL water or Chicken broth", isChecked: false)
                ],
                instruction: [
                    Instruction(stepOrder: 1, stepDesc: "In a large skillet over medium heat, add olive oil and chicken pieces. Sprinkle with salt and pepper and cook about 5-6 minutes until no longer pink and cooked throughout. Remove from pan and set aside.", isTimer: false, cookTime: 0, imageString: "cheesy-chicken-s1", tickTimer: 0),
                    Instruction(stepOrder: 2, stepDesc: "Reduce pan heat to medium low add onion and garlic to a pan. Saute until tender. Add the rice and continue to toast the rice about a minute or two. Pour in the chicken stock and simmer with the lid on for 15 minutes.", isTimer: false, cookTime: 0, imageString: "cheesy-chicken-s2", tickTimer: 0),
                    Instruction(stepOrder: 3, stepDesc: "After the rice has been cooking for about 8 minutes add the broccoli to the rice and put the lid back on. This will steam the broccoli.", isTimer: false, cookTime: 0, imageString: "cheesy-chicken-s3", tickTimer: 0),
                    Instruction(stepOrder: 4, stepDesc: "Once the rice is finished cooking, add salt, and pepper. Stir to combine. Add the chicken back and stir. Top with the cheese and put the lid back on for a few minutes to let the cheese melt. Stir the melted cheese in and serve.", isTimer: false, cookTime: 0, imageString: "cheesy-chicken-s4", tickTimer: 0)
                ],
                preperation: [
                    Preperation(ingredientId: 1, prepTitle: "Cut into cubes"),
                    Preperation(ingredientId: 2, prepTitle: "Cut into dices"),
                    Preperation(ingredientId: 3, prepTitle: "Mince"),
                    Preperation(ingredientId: 4, prepTitle: "Chop"),
                    Preperation(ingredientId: 5, prepTitle: "Shred")
                ]),
            
            Recipes(recipeId: 8, recipeName: "Tempe Salted Egg", recipeDesc: "Tempeh fried and cooked with salted egg sauce.", cookTime: 20, calories: 72, imgString: "tempe-salted-egg",
                ingredient: [
                    Ingredient(ingredientId: 1,title: "300 grams tempeh, diced", isChecked: false),
                    Ingredient(ingredientId: 2, title: "3 cloves garlic, finely minced", isChecked: false),
                    Ingredient(ingredientId: 3,title: "3 salted egg yolk, mashed", isChecked: false),
                    Ingredient(ingredientId: 4, title: "4 tbsp wheat flour", isChecked: false),
                    Ingredient(ingredientId: 5,title: "3 tbsp all-purpose flour", isChecked: false),
                    Ingredient(ingredientId: 6, title: "2 tbsp sago flour", isChecked: false),
                    Ingredient(ingredientId: 7,title: "½ cup full cream milk", isChecked: false),
                    Ingredient(ingredientId: 8, title: "1 sachet of fried tempeh seasoning", isChecked: false),
                    Ingredient(ingredientId: 9,title: "Salt", isChecked: false)
                ],
                instruction: [
                    Instruction(stepOrder: 1, stepDesc: "Dissolve the mixed spices with enough water, then soak the tempeh in it for a few minutes, then drain.", isTimer: false, cookTime: 0, imageString: "tempe-salted-egg-s1", tickTimer: 0),
                    Instruction(stepOrder: 2, stepDesc: "Roll the tempeh into a mixture of flour, seasoning flour, and sago flour.", isTimer: false, cookTime: 0, imageString: "tempe-salted-egg-s2", tickTimer: 0),
                    Instruction(stepOrder: 3, stepDesc: "Fry tempeh in hot oil until dry and cooked.", isTimer: false, cookTime: 0, imageString: "tempe-salted-egg-s3", tickTimer: 0),
                    Instruction(stepOrder: 4, stepDesc: "Sauté the garlic until fragrant, then add the egg yolks and milk. Add salt to taste and stir until cooked.", isTimer: false, cookTime: 0, imageString: "tempe-salted-egg-s4", tickTimer: 0),
                    Instruction(stepOrder: 5, stepDesc: "Serve fried tempeh with salted egg sauce.", isTimer: false, cookTime: 0, imageString: "tempe-salted-egg-s5", tickTimer: 0)
                ],
                preperation: [
                    Preperation(ingredientId: 1, prepTitle: "Cut into dices"),
                    Preperation(ingredientId: 2, prepTitle: "Mince"),
                    Preperation(ingredientId: 3, prepTitle: "Mash")
                ]),
            
        ]
    
    static var weeklyRecipeArray: [WeeklyRecipe] = []
    
//    static var weeklyRecipeArray: [WeeklyRecipe] = [
//        WeeklyRecipe(dayNumber: 1, recipeId: 1, status: 0),
//        WeeklyRecipe(dayNumber: 1, recipeId: 2, status: 0),
//        WeeklyRecipe(dayNumber: 2, recipeId: 3, status: 0),
//        WeeklyRecipe(dayNumber: 2, recipeId: 4, status: 0),
//        WeeklyRecipe(dayNumber: 3, recipeId: 5, status: 0),
//        WeeklyRecipe(dayNumber: 3, recipeId: 6, status: 0),
//        WeeklyRecipe(dayNumber: 4, recipeId: 1, status: 0),
//        WeeklyRecipe(dayNumber: 4, recipeId: 2, status: 0),
//        WeeklyRecipe(dayNumber: 5, recipeId: 3, status: 0),
//        WeeklyRecipe(dayNumber: 5, recipeId: 4, status: 0),
//        WeeklyRecipe(dayNumber: 6, recipeId: 5, status: 0),
//        WeeklyRecipe(dayNumber: 6, recipeId: 6, status: 0),
//        WeeklyRecipe(dayNumber: 7, recipeId: 1, status: 0),
//        WeeklyRecipe(dayNumber: 7, recipeId: 2, status: 0)
//    ]
    
    static func setWeeklyRecipe(dayNumber: Int, recipeId: Int){
        recipeData.weeklyRecipeArray.append(WeeklyRecipe(dayNumber: dayNumber, recipeId: recipeId, status: 0))
    }
    
}

