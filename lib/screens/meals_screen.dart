//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import '../models/meal.dart';
import '../widgets /meal_item.dart';
import 'meal_details_screen.dart';

//  //   ///

class MealsScreen extends StatelessWidget {
  final String? title;
  final List<Meal> meals;
  final Function(Meal meal) onToggleFavorite;

  const MealsScreen(
      {super.key,
      this.title,
      required this.meals,
      required this.onToggleFavorite});

  void selectMeal(BuildContext context, Meal meal) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => MealDetailsScreen(
          meal: meal,
          onToggleFavorite: onToggleFavorite,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('Byeeeeeee');
    Widget screenContent = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Sorry.\nNo meals found.',
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
          const SizedBox(height: 16.0),
          Text(
            'Please try again later.',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
        ],
      ),
    );

    if (meals.isNotEmpty) {
      debugPrint('Helloooooo');
      screenContent = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (BuildContext ctx, int index) => MealItem(
          meal: meals[index],
          onSelectMeal: (context, meal) {
            selectMeal(context, meal);
          },
        ),
      );
    }

    if (title == null) {
      return screenContent;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: screenContent,
    );
  }
}
