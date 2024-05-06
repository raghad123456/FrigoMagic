import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'reciepe_finder.dart';

class Ingredient {
  final String name;
  final String imageUrl;
  bool isChecked;

  Ingredient({
    required this.name,
    required this.imageUrl,
    this.isChecked = false,
  });
}

final List<Ingredient> ingredients = [
  Ingredient(name: 'tomato', imageUrl: 'assets/tomato.jpg'),
  Ingredient(name: 'onion', imageUrl: 'assets/onion.jpg'),
  Ingredient(name: 'garlic', imageUrl: 'assets/garlic.jpg'),
  Ingredient(name: 'lettuce', imageUrl: 'assets/lettuce.jpg'),
  Ingredient(name: 'chicken ', imageUrl: 'assets/chicken.jpg'),
  Ingredient(name: 'rice', imageUrl: 'assets/rice.jpg'),
  Ingredient(name: 'potato', imageUrl: 'assets/potato.jpg'),
  Ingredient(name: 'carrot', imageUrl: 'assets/carrot.jpg'),
  Ingredient(name: 'spinach', imageUrl: 'assets/spinach.jpg'),
  Ingredient(name: 'broccoli', imageUrl: 'assets/broccoli.jpg'),
  Ingredient(name: 'bell pepper', imageUrl: 'assets/bell_pepper.jpg'),
  Ingredient(name: 'mushroom', imageUrl: 'assets/mushroom.jpg'),
  Ingredient(name: 'zucchini', imageUrl: 'assets/zucchini.jpg'),
  Ingredient(name: 'eggplant', imageUrl: 'assets/eggplant.jpg'),
  Ingredient(name: 'celery', imageUrl: 'assets/celery.jpg'),
  Ingredient(name: 'cucumber', imageUrl: 'assets/cucumber.jpg'),
  Ingredient(name: 'chili pepper', imageUrl: 'assets/chili_pepper.jpg'),
  Ingredient(name: 'cabbage', imageUrl: 'assets/cabbage.jpg'),
  Ingredient(name: 'cauliflower', imageUrl: 'assets/cauliflower.jpg'),
  Ingredient(name: 'brussels sprouts', imageUrl: 'assets/brussels_sprouts.jpg'),
  Ingredient(name: 'kale', imageUrl: 'assets/kale.jpg'),
  Ingredient(name: 'collard greens', imageUrl: 'assets/collard_greens.jpg'),
  Ingredient(name: 'arugula', imageUrl: 'assets/arugula.jpg'),
  Ingredient(name: 'bok choy', imageUrl: 'assets/bok_choy.jpg'),
  Ingredient(name: 'beet', imageUrl: 'assets/beet.jpg'),
  Ingredient(name: 'turnip', imageUrl: 'assets/turnip.jpg'),
  Ingredient(name: 'radish', imageUrl: 'assets/radish.jpg'),
  Ingredient(name: 'parsnip', imageUrl: 'assets/parsnip.jpg'),
  Ingredient(name: 'rutabaga', imageUrl: 'assets/rutabaga.jpg'),
  Ingredient(name: 'scallion', imageUrl: 'assets/scallion.jpg'),
  Ingredient(name: 'leek', imageUrl: 'assets/leek.jpg'),
  Ingredient(name: 'ginger', imageUrl: 'assets/ginger.jpg'),
  Ingredient(name: 'turmeric', imageUrl: 'assets/turmeric.jpg'),
  Ingredient(name: 'cilantro', imageUrl: 'assets/cilantro.jpg'),
  Ingredient(name: 'parsley', imageUrl: 'assets/parsley.jpg'),
  Ingredient(name: 'basil', imageUrl: 'assets/basil.jpg'),
  Ingredient(name: 'oregano', imageUrl: 'assets/oregano.jpg'),
  Ingredient(name: 'thyme', imageUrl: 'assets/thyme.jpg'),
  Ingredient(name: 'rosemary', imageUrl: 'assets/rosemary.jpg'),
  Ingredient(name: 'sage', imageUrl: 'assets/sage.jpg'),
  Ingredient(name: 'dill', imageUrl: 'assets/dill.jpg'),
  Ingredient(name: 'cumin', imageUrl: 'assets/cumin.jpg'),
  Ingredient(name: 'coriander', imageUrl: 'assets/coriander.jpg'),
  Ingredient(name: 'mustard', imageUrl: 'assets/mustard.jpg'),
  Ingredient(name: 'paprika', imageUrl: 'assets/paprika.jpg'),
  Ingredient(name: 'bay leaf', imageUrl: 'assets/bay_leaf.jpg'),
  Ingredient(name: 'nutmeg', imageUrl: 'assets/nutmeg.jpg'),
  Ingredient(name: 'clove', imageUrl: 'assets/clove.jpg'),
  Ingredient(name: 'cardamom', imageUrl: 'assets/cardamom.jpg'),
  Ingredient(name: 'cinnamon', imageUrl: 'assets/cinnamon.jpg'),
  Ingredient(name: 'fennel', imageUrl: 'assets/fennel.jpg'),
  Ingredient(name: 'anise', imageUrl: 'assets/anise.jpg'),
  Ingredient(name: 'vanilla', imageUrl: 'assets/vanilla.jpg'),
  Ingredient(name: 'salt', imageUrl: 'assets/salt.jpg'),
  Ingredient(name: 'pepper', imageUrl: 'assets/pepper.jpg'),
  Ingredient(name: 'olive oil', imageUrl: 'assets/olive_oil.jpg'),
  Ingredient(name: 'butter', imageUrl: 'assets/butter.jpg'),
  Ingredient(name: 'cheese', imageUrl: 'assets/cheese.jpg'),
  Ingredient(name: 'milk', imageUrl: 'assets/milk.jpg'),
  Ingredient(name: 'yogurt', imageUrl: 'assets/yogurt.jpg'),
  Ingredient(name: 'cream', imageUrl: 'assets/cream.jpg'),
  Ingredient(name: 'sour cream', imageUrl: 'assets/sour_cream.jpg'),
  Ingredient(name: 'mayonnaise', imageUrl: 'assets/mayonnaise.jpg'),
  Ingredient(name: 'ketchup', imageUrl: 'assets/ketchup.jpg'),
  Ingredient(name: 'vinegar', imageUrl: 'assets/vinegar.jpg'),
  Ingredient(name: 'soy sauce', imageUrl: 'assets/soy_sauce.jpg'),
  Ingredient(name: 'fish sauce', imageUrl: 'assets/fish_sauce.jpg'),
  Ingredient(name: 'honey', imageUrl: 'assets/honey.jpg'),
  Ingredient(name: 'maple syrup', imageUrl: 'assets/maple_syrup.jpg'),
  Ingredient(name: 'molasses', imageUrl: 'assets/molasses.jpg'),
  Ingredient(name: 'jam', imageUrl: 'assets/jam.jpg'),
  Ingredient(name: 'jelly', imageUrl: 'assets/jelly.jpg'),
  Ingredient(name: 'chocolate', imageUrl: 'assets/chocolate.jpg'),
  Ingredient(name: 'sugar', imageUrl: 'assets/sugar.jpg'),
  Ingredient(name: 'flour', imageUrl: 'assets/flour.jpg'),
  Ingredient(name: 'yeast', imageUrl: 'assets/yeast.jpg'),
  Ingredient(name: 'baking powder', imageUrl: 'assets/baking_powder.jpg'),
  Ingredient(name: 'baking soda', imageUrl: 'assets/baking_soda.jpg'),
  Ingredient(name: 'cornstarch', imageUrl: 'assets/cornstarch.jpg'),
];


class Search extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<Search> {
  late List<Ingredient> filteredIngredients;
  TextEditingController _searchController = TextEditingController();
  List<Ingredient> selectedIngredients = [];

  @override
  void initState() {
    super.initState();
    filteredIngredients = ingredients;
  }

  void filterSearchResults(String query) {
    List<Ingredient> searchResults = ingredients
        .where((ingredient) =>
        ingredient.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
    setState(() {
      filteredIngredients = searchResults;
    });
  }

  void showSelectedIngredientsSnackbar(BuildContext context) {
    final snackBar = SnackBar(
      content: Container(
        padding: EdgeInsets.symmetric(vertical: 12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Selected Ingredients:',
                    style: TextStyle(
                        fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  },
                  child: Icon(Icons.close),
                ),
              ],
            ),
            SizedBox(height: 8),
            Wrap(
              spacing: 8.0,
              children: selectedIngredients
                  .map(
                    (ingredient) => Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 4.0, vertical: 4.0),
                  child: Chip(
                    backgroundColor: Colors.white,
                    label: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        ingredient.name,
                        style: TextStyle(
                          color: Colors.purple,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                ),
              )
                  .toList(),
            ),
            SizedBox(height: 8),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to recipe finder page
                  Get.to(() => RecipeFinderPage(
                    selectedIngredients: selectedIngredients,
                  ));
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                },
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      ),
      duration: Duration(seconds: 5),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true; // Allow back navigation
      },
      child: Scaffold(

        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _searchController,
                onChanged: (value) {
                  filterSearchResults(value);
                },
                decoration: InputDecoration(
                  labelText: "Search",
                  hintText: "Search ingredients...",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25.0),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredIngredients.length,
                itemBuilder: (context, index) {
                  final ingredient = filteredIngredients[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(ingredient.imageUrl),
                    ),
                    title: Text(ingredient.name),
                    trailing: Checkbox(
                      value: ingredient.isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          ingredient.isChecked = value ?? false;
                          if (value ?? false) {
                            selectedIngredients.add(ingredient);
                          } else {
                            selectedIngredients.remove(ingredient);
                          }
                        });
                      },
                    ),
                    onTap: () {
                      setState(() {
                        ingredient.isChecked = !ingredient.isChecked;
                        if (ingredient.isChecked) {
                          selectedIngredients.add(ingredient);
                        } else {
                          selectedIngredients.remove(ingredient);
                        }
                      });
                    },
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                showSelectedIngredientsSnackbar(context);
              },
              child: Text('Search Now'),
            ),
          ],
        ),
      ),
    );
  }
}
