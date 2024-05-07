//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';

//  Import FILES
import '../data/dummy_data.dart';
import '../models/category.dart';
import '../widgets /category_grid_item.dart';
import 'meals_screen.dart';
//  //   ///

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  void _selectedCategory(BuildContext context, Category category) {
    final filteredMeals = dummyMeals
        .where((element) => element.categories.contains(category.id))
        .toList();

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => MealsScreen(
          title: category.title, //'Some title',
          meals: filteredMeals, //[],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick your favourite food category'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: availableCategories
            .map((category) => CategoryGridItem(
                  category: category,
                  onSelectCategory: () {
                    _selectedCategory(context, category);
                  },
                ))
            .toList(),
        // children: <Widget>[for (final category in availableCategories)CategoryGridItem(category: category),],
      ),
    );
  }
}
