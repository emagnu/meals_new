//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import '../models/meal.dart';
import '../widgets /main_drawer.dart';
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

  void _showInfoMessage(String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        // duration: Duration(seconds: 2),
      ),
    );
  }

  void _toggleMealFavoriteStatus(Meal meal) {
    final isExisting = _favouriteMeals.contains(meal);
    if (isExisting) {
      setState(() {
        _favouriteMeals.remove(meal);
      });
      _showInfoMessage('This meal has been removed from the favourite list.');
    } else {
      setState(() {
        _favouriteMeals.add(meal);
      });
      _showInfoMessage('This meal has been marked as favourite.');
    }
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _setScreen(String identifier) async {
    if (identifier == 'filters') {
      setState(() {
        _selectedPageIndex = 1;
      });
    } else {
      Navigator.of(context).pop();
    }
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
        meals: _favouriteMeals, //const [],
        onToggleFavorite: _toggleMealFavoriteStatus,
      );
      activePageTitle = 'Your favourite meals';
    }
    return Scaffold(
      drawer: MainDrawer(
        onSelectScreen: _setScreen,
      ),
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
