import 'package:flutter/material.dart';

class InfoDishes extends StatelessWidget {
  final Map<String, dynamic> dish;

  InfoDishes({required this.dish});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(dish['name']),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display the dish photo
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(dish['image']),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            // Display the dish name
            Text(
              dish['name'],
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            // Display additional information about the dish (you can replace this with actual dish information)
            Text(
              'Additional Information:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'This is a delicious dish that you will enjoy!',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Ingredients:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Ingredient 1, Ingredient 2, Ingredient 3, ...',
              style: TextStyle(fontSize: 16),
            ),
            // Add more information as needed
          ],
        ),
      ),
    );
  }
}
