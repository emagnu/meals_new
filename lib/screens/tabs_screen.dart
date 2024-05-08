//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import '../models/meal.dart';
import 'categories_screen.dart';
import 'meals_screen.dart';
//  //   ///

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;
  final List<Meal> _favouriteMeals = [];

  void _toggleMealFavoriteStatus(Meal meal) {
    setState(() {
      _favouriteMeals.contains(meal)
          ? _favouriteMeals.remove(meal)
          : _favouriteMeals.add(meal);
    });
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = CategoriesScreen(
      onToggleFavorite: _toggleMealFavoriteStatus,
    );
    String activePageTitle = 'Categories';

    if (_selectedPageIndex == 1) {
      // activePage = const MealsScreen(title: 'Favourites', meals: []);
      activePage = MealsScreen(
        meals: const [],
        onToggleFavorite: _toggleMealFavoriteStatus,
      );
      activePageTitle = 'Your favourite meals';
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle), //('Dynamic ....'),
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage, //(index) {},
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.set_meal),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favourites',
          ),
        ],
      ),
    );
  }
}
