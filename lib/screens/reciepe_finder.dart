import 'package:flutter/material.dart';
import 'search_screen.dart';

class Recipe {
  final String name;
  final List<String> ingredients;
  final String imageUrl;

  Recipe({
    required this.name,
    required this.ingredients,
    required this.imageUrl,
  });
}
List<Recipe> recipes = [
  Recipe(
    name: 'Tomato Soup',
    ingredients: ['tomato', 'onion', 'garlic', 'salt', 'pepper'],
    imageUrl: 'assets/tomato_soup.jpg',
  ),
  Recipe(
    name: 'Chicken Stir-Fry',
    ingredients: ['chicken', 'bell pepper', 'onion', 'soy sauce'],
    imageUrl: 'assets/chicken_stir_fry.jpg',
  ),
  Recipe(
    name: 'Spaghetti Bolognese',
    ingredients: ['spaghetti', 'ground beef', 'tomato sauce', 'onion', 'garlic', 'salt', 'pepper'],
    imageUrl: 'assets/spaghetti_bolognese.jpg',
  ),
  Recipe(
    name: 'Caesar Salad',
    ingredients: ['romaine lettuce', 'croutons', 'parmesan cheese', 'caesar dressing'],
    imageUrl: 'assets/caesar_salad.jpg',
  ),
  Recipe(
    name: 'Beef Tacos',
    ingredients: ['beef', 'tortillas', 'lettuce', 'tomato', 'cheese', 'salsa'],
    imageUrl: 'assets/beef_tacos.jpg',
  ),
  Recipe(
    name: 'Vegetable Curry',
    ingredients: ['potato', 'carrot', 'bell pepper', 'onion', 'garlic', 'coconut milk', 'curry powder'],
    imageUrl: 'assets/vegetable_curry.jpg',
  ),
  Recipe(
    name: 'Grilled Salmon',
    ingredients: ['salmon fillet', 'lemon', 'garlic', 'olive oil', 'salt', 'pepper'],
    imageUrl: 'assets/grilled_salmon.jpg',
  ),
  Recipe(
    name: 'Mushroom Risotto',
    ingredients: ['arborio rice', 'mushrooms', 'onion', 'garlic', 'parmesan cheese', 'vegetable broth'],
    imageUrl: 'assets/mushroom_risotto.jpg',
  ),
  Recipe(
    name: 'Chocolate Cake',
    ingredients: ['flour', 'sugar', 'cocoa powder', 'eggs', 'butter', 'vanilla extract', 'baking powder'],
    imageUrl: 'assets/chocolate_cake.jpg',
  ),
  Recipe(
    name: 'Beef Stew',
    ingredients: ['beef stew meat', 'potatoes', 'carrots', 'onion', 'garlic', 'beef broth', 'tomato paste'],
    imageUrl: 'assets/beef_stew.jpg',
  ),
  Recipe(
    name: 'Pasta Primavera',
    ingredients: ['pasta', 'bell pepper', 'zucchini', 'yellow squash', 'onion', 'garlic', 'tomato', 'olive oil'],
    imageUrl: 'assets/pasta_primavera.jpg',
  ),
  Recipe(
    name: 'Lemon Chicken',
    ingredients: ['chicken', 'lemon', 'garlic', 'rosemary', 'olive oil', 'salt', 'pepper'],
    imageUrl: 'assets/lemon_chicken.jpg',
  ),
  Recipe(
    name: 'Greek Salad',
    ingredients: ['cucumber', 'tomato', 'red onion', 'kalamata olives', 'feta cheese', 'olive oil', 'red wine vinegar'],
    imageUrl: 'assets/greek_salad.jpg',
  ),
  Recipe(
    name: 'Vegetable Soup',
    ingredients: ['carrot', 'celery', 'onion', 'garlic', 'potato', 'tomato', 'vegetable broth'],
    imageUrl: 'assets/vegetable_soup.jpg',
  ),
  Recipe(
    name: 'Shrimp Scampi',
    ingredients: ['shrimp', 'garlic', 'lemon', 'butter', 'white wine', 'parsley', 'linguine'],
    imageUrl: 'assets/shrimp_scampi.jpg',
  ),
  Recipe(
    name: 'Cheeseburger',
    ingredients: ['ground beef', 'burger buns', 'cheese', 'lettuce', 'tomato', 'onion', 'ketchup', 'mustard'],
    imageUrl: 'assets/cheeseburger.jpg',
  ),
  Recipe(
    name: 'Chicken Parmesan',
    ingredients: ['chicken breast', 'breadcrumbs', 'parmesan cheese', 'tomato sauce', 'mozzarella cheese', 'spaghetti'],
    imageUrl: 'assets/chicken_parmesan.jpg',
  ),
  Recipe(
    name: 'Roast Beef',
    ingredients: ['beef roast', 'garlic', 'rosemary', 'thyme', 'salt', 'pepper'],
    imageUrl: 'assets/roast_beef.jpg',
  ),
  Recipe(
    name: 'Caprese Salad',
    ingredients: ['tomato', 'mozzarella cheese', 'basil', 'balsamic glaze', 'olive oil', 'salt', 'pepper'],
    imageUrl: 'assets/caprese_salad.jpg',
  ),
  Recipe(
    name: 'Pancakes',
    ingredients: ['flour', 'milk', 'eggs', 'baking powder', 'sugar', 'butter', 'syrup'],
    imageUrl: 'assets/pancakes.jpg',
  ),
  Recipe(
    name: 'Chicken Noodle Soup',
    ingredients: ['chicken', 'carrot', 'celery', 'onion', 'garlic', 'chicken broth', 'egg noodles'],
    imageUrl: 'assets/chicken_noodle_soup.jpg',
  ),
  Recipe(
    name: 'Tuna Salad',
    ingredients: ['canned tuna', 'celery', 'onion', 'mayonnaise', 'lemon juice', 'salt', 'pepper'],
    imageUrl: 'assets/tuna_salad.jpg',
  ),
  Recipe(
    name: 'Eggplant Parmesan',
    ingredients: ['eggplant', 'breadcrumbs', 'parmesan cheese', 'tomato sauce', 'mozzarella cheese', 'spaghetti'],
    imageUrl: 'assets/eggplant_parmesan.jpg',
  ),
  Recipe(
    name: 'French Toast',
    ingredients: ['bread', 'eggs', 'milk', 'cinnamon', 'vanilla extract', 'butter', 'syrup'],
    imageUrl: 'assets/french_toast.jpg',
  ),
  Recipe(
    name: 'Minestrone Soup',
    ingredients: ['carrot', 'celery', 'onion', 'garlic', 'canned tomatoes', 'white beans', 'pasta', 'vegetable broth'],
    imageUrl: 'assets/minestrone_soup.jpg',
  ),
  Recipe(
    name: 'Beef and Broccoli Stir-Fry',
    ingredients: ['beef', 'broccoli', 'soy sauce', 'garlic', 'ginger', 'brown sugar', 'rice'],
    imageUrl: 'assets/beef_broccoli_stir_fry.jpg',
  ),
  Recipe(
    name: 'Meatloaf',
    ingredients: ['ground beef', 'breadcrumbs', 'onion', 'ketchup', 'egg', 'milk', 'salt', 'pepper'],
    imageUrl: 'assets/meatloaf.jpg',
  ),
  Recipe(
    name: 'Spinach Salad',
    ingredients: ['spinach', 'strawberries', 'walnuts', 'feta cheese', 'balsamic vinaigrette'],
    imageUrl: 'assets/spinach_salad.jpg',
  ),
  Recipe(
    name: 'Chicken Alfredo',
    ingredients: ['chicken', 'fettuccine', 'heavy cream', 'butter', 'garlic', 'parmesan cheese', 'parsley'],
    imageUrl: 'assets/chicken_alfredo.jpg',
  ),
  Recipe(
    name: 'Lasagna',
    ingredients: ['lasagna noodles', 'ground beef', 'ricotta cheese', 'mozzarella cheese', 'parmesan cheese', 'tomato sauce'],
    imageUrl: 'assets/lasagna.jpg',
  ),
  Recipe(
    name: 'Ratatouille',
    ingredients: ['zucchini', 'eggplant', 'bell pepper', 'onion', 'garlic', 'tomato', 'olive oil', 'herbs de Provence'],
    imageUrl: 'assets/ratatouille.jpg',
  ),
  Recipe(
    name: 'Pulled Pork Sandwiches',
    ingredients: ['pork shoulder', 'bbq sauce', 'burger buns', 'coleslaw'],
    imageUrl: 'assets/pulled_pork_sandwiches.jpg',
  ),
  Recipe(
    name: 'Vegetable Lo Mein',
    ingredients: ['spaghetti', 'bell pepper', 'carrot', 'mushroom', 'broccoli', 'soy sauce', 'sesame oil', 'ginger', 'garlic'],
    imageUrl: 'assets/vegetable_lo_mein.jpg',
  ),
  Recipe(
    name: 'Potato Salad',
    ingredients: ['potatoes', 'hard-boiled eggs', 'mayonnaise', 'mustard', 'onion', 'celery', 'dill pickles'],
    imageUrl: 'assets/potato_salad.jpg',
  ),
  Recipe(
    name: 'Quiche Lorraine',
    ingredients: ['pie crust', 'bacon', 'eggs', 'heavy cream', 'swiss cheese', 'onion', 'salt', 'pepper', 'nutmeg'],
    imageUrl: 'assets/quiche_lorraine.jpg',
  ),
  Recipe(
    name: 'Shakshuka',
    ingredients: ['eggs', 'tomatoes', 'bell pepper', 'onion', 'garlic', 'paprika', 'cumin', 'red pepper flakes', 'feta cheese', 'parsley'],
    imageUrl: 'assets/shakshuka.jpg',
  ),
  Recipe(
    name: 'Fried Rice',
    ingredients: ['rice', 'eggs', 'carrot', 'peas', 'onion', 'garlic', 'soy sauce', 'sesame oil'],
    imageUrl: 'assets/fried_rice.jpg',
  ),
  Recipe(
    name: 'Chicken Curry',
    ingredients: ['chicken', 'onion', 'garlic', 'ginger', 'tomato', 'coconut milk', 'curry powder', 'rice'],
    imageUrl: 'assets/chicken_curry.jpg',
  ),
  Recipe(
    name: 'Pesto Pasta',
    ingredients: ['pasta', 'basil', 'parmesan cheese', 'garlic', 'pine nuts', 'olive oil', 'salt', 'pepper'],
    imageUrl: 'assets/pesto_pasta.jpg',
  ),
  Recipe(
    name: 'Beef Wellington',
    ingredients: ['beef tenderloin', 'puff pastry', 'mushrooms', 'prosciutto', 'dijon mustard', 'egg'],
    imageUrl: 'assets/beef_wellington.jpg',
  ),
  Recipe(
    name: 'Cobb Salad',
    ingredients: ['romaine lettuce', 'chicken', 'avocado', 'tomato', 'bacon', 'hard-boiled eggs', 'blue cheese', 'red wine vinaigrette'],
    imageUrl: 'assets/cobb_salad.jpg',
  ),
  Recipe(
    name: 'Pad Thai',
    ingredients: ['rice noodles', 'shrimp', 'tofu', 'bean sprouts', 'green onion', 'peanuts', 'lime', 'soy sauce', 'fish sauce'],
    imageUrl: 'assets/pad_thai.jpg',
  ),
  Recipe(
    name: 'Beef Enchiladas',
    ingredients: ['beef', 'tortillas', 'enchilada sauce', 'onion', 'bell pepper', 'cheese'],
    imageUrl: 'assets/beef_enchiladas.jpg',
  ),
  Recipe(
    name: 'Egg Fried Rice',
    ingredients: ['rice', 'eggs', 'carrot', 'peas', 'onion', 'garlic', 'soy sauce', 'sesame oil'],
    imageUrl: 'assets/egg_fried_rice.jpg',
  ),
  Recipe(
    name: 'Chicken Caesar Salad',
    ingredients: ['romaine lettuce', 'grilled chicken', 'croutons', 'parmesan cheese', 'caesar dressing'],
    imageUrl: 'assets/chicken_caesar_salad.jpg',
  ),
  Recipe(
    name: 'Beef and Broccoli',
    ingredients: ['beef', 'broccoli', 'garlic', 'ginger', 'soy sauce', 'brown sugar', 'cornstarch', 'rice'],
    imageUrl: 'assets/beef_and_broccoli.jpg',
  ),
  Recipe(
    name: 'Lentil Soup',
    ingredients: ['lentils', 'carrot', 'celery', 'onion', 'garlic', 'tomato', 'vegetable broth', 'bay leaf'],
    imageUrl: 'assets/lentil_soup.jpg',
  ),
  Recipe(
    name: 'Vegetable Stir-Fry',
    ingredients: ['bell pepper', 'zucchini', 'carrot', 'onion', 'garlic', 'soy sauce', 'sesame oil', 'rice'],
    imageUrl: 'assets/vegetable_stir_fry.jpg',
  ),
  Recipe(
    name: 'Chicken Quesadillas',
    ingredients: ['chicken', 'tortillas', 'cheese', 'bell pepper', 'onion', 'salsa', 'sour cream'],
    imageUrl: 'assets/chicken_quesadillas.jpg',
  ),
  Recipe(
    name: 'Creamy Tomato Pasta',
    ingredients: ['pasta', 'tomato', 'garlic', 'heavy cream', 'parmesan cheese', 'basil'],
    imageUrl: 'assets/creamy_tomato_pasta.jpg',
  ),
  Recipe(
    name: 'BBQ Ribs',
    ingredients: ['pork ribs', 'bbq sauce', 'salt', 'pepper'],
    imageUrl: 'assets/bbq_ribs.jpg',
  ),
  Recipe(
    name: 'Mango Salsa',
    ingredients: ['mango', 'red bell pepper', 'red onion', 'cilantro', 'lime', 'jalapeno', 'salt'],
    imageUrl: 'assets/mango_salsa.jpg',
  ),
  Recipe(
    name: 'Tofu Stir-Fry',
    ingredients: ['tofu', 'bell pepper', 'broccoli', 'carrot', 'onion', 'garlic', 'soy sauce', 'sesame oil', 'rice'],
    imageUrl: 'assets/tofu_stir_fry.jpg',
  ),
  Recipe(
    name: 'Beef Tenders',
    ingredients: ['beef tenderloin', 'garlic', 'rosemary', 'thyme', 'salt', 'pepper', 'butter'],
    imageUrl: 'assets/beef_tenders.jpg',
  ),
  Recipe(
    name: 'Vegetable Lasagna',
    ingredients: ['lasagna noodles', 'zucchini', 'yellow squash', 'bell pepper', 'onion', 'garlic', 'tomato sauce', 'ricotta cheese', 'mozzarella cheese'],
    imageUrl: 'assets/vegetable_lasagna.jpg',
  ),
  Recipe(
    name: 'Chicken Fajitas',
    ingredients: ['chicken', 'tortillas', 'bell pepper', 'onion', 'lime', 'chili powder', 'cumin', 'garlic'],
    imageUrl: 'assets/chicken_fajitas.jpg',
  ),
  Recipe(
    name: 'Margarita Pizza',
    ingredients: ['pizza dough', 'tomato sauce', 'mozzarella cheese', 'basil', 'olive oil', 'salt', 'pepper'],
    imageUrl: 'assets/margarita_pizza.jpg',
  ),
  Recipe(
    name: 'Omelette',
    ingredients: ['eggs', 'cheese', 'bell pepper', 'onion', 'mushrooms', 'spinach', 'salt', 'pepper'],
    imageUrl: 'assets/omelette.jpg',
  ),
  Recipe(
    name: 'Chicken Tortilla Soup',
    ingredients: ['chicken', 'bell pepper', 'onion', 'garlic', 'tomato', 'corn', 'black beans', 'chicken broth', 'tortilla strips'],
    imageUrl: 'assets/chicken_tortilla_soup.jpg',
  ),
  Recipe(
    name: 'Pulled Chicken Sandwiches',
    ingredients: ['chicken breast', 'bbq sauce', 'burger buns', 'coleslaw'],
    imageUrl: 'assets/pulled_chicken_sandwiches.jpg',
  ),
  Recipe(
    name: 'Caramelized Onion Tart',
    ingredients: ['pie crust', 'onion', 'balsamic vinegar', 'brown sugar', 'goat cheese'],
    imageUrl: 'assets/caramelized_onion_tart.jpg',
  ),
  Recipe(
    name: 'Vegetable Curry',
    ingredients: ['potato', 'carrot', 'bell pepper', 'onion', 'garlic', 'coconut milk', 'curry powder'],
    imageUrl: 'assets/vegetable_curry_2.jpg',
  ),
  Recipe(
    name: 'Beef Tacos',
    ingredients: ['beef', 'tortillas', 'lettuce', 'tomato', 'cheese', 'salsa'],
    imageUrl: 'assets/beef_tacos_2.jpg',
  ),
];

class RecipeFinderPage extends StatelessWidget {
  final List<Ingredient> selectedIngredients;

  const RecipeFinderPage({Key? key, required this.selectedIngredients})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Perform matching of selected ingredients with recipes
    List<Recipe> matchedRecipes = [];

    // Iterate through recipes and check if they match the selected ingredients
    for (var recipe in recipes) {
      int matchedCount = 0;
      for (var ingredientName in recipe.ingredients) {
        for (var selectedIngredient in selectedIngredients) {
          if (selectedIngredient.name == ingredientName &&
              selectedIngredient.isChecked) {
            matchedCount++;
            break; // Move to the next ingredient in the recipe
          }
        }
      }
      // Check if the recipe matches at least 2 or 3 ingredients
      if ( matchedCount >= 3) {
        matchedRecipes.add(recipe);
      }
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Matched Recipes'),
      ),
      body: matchedRecipes.isEmpty
          ? Center(
        child: Text(
          'No recipes found with the selected ingredients. Please try selecting other ingredients.',
          textAlign: TextAlign.center,
        )

      )
          : ListView.builder(
        itemCount: matchedRecipes.length,
        itemBuilder: (context, index) {
          final recipe = matchedRecipes[index];
          return InkWell(
            onTap: () {
              // Navigate to recipe details page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipeDetailsScreen(recipe: recipe),
                ),
              );
            },
            child: Card(
              elevation: 5,
              margin: EdgeInsets.all(8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      recipe.imageUrl,
                      width: double.infinity,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    left: 16,
                    right: 16,
                    child: Text(
                      recipe.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
class RecipeDetailsScreen extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetailsScreen({Key? key, required this.recipe})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 200, // Adjust the height as needed
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(recipe.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Ingredients:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: recipe.ingredients.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(recipe.ingredients[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}