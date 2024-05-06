import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:frigomagic/screens/info_dishes.dart';
import 'package:frigomagic/screens/reciepe_finder.dart';
import 'package:frigomagic/screens/search_screen.dart';
import 'package:frigomagic/screens/setting_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Frigomagic',
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);
  final user =FirebaseAuth.instance.currentUser;
  final List<String> _pageTitles = ['Dishes', 'Search', 'Settings'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pageTitles[_currentIndex]),
        centerTitle: true,

        // Center the title
      ),

      body: PageView(

        controller: _pageController,
        onPageChanged: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: [
          HomeContent(),
          Search(),
          Settings(
            userEmail: 'raghadalhassan@gmail.com',
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            _pageController.animateToPage(
              index,
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      itemCount: recipes.length,
      itemBuilder: (context, index) {
        final recipe = recipes[index];
        return InkWell(

          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => InfoDishes(dish: {
                  'name': recipe.name,
                  'image': recipe.imageUrl,
                }),
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
    );
  }
}
