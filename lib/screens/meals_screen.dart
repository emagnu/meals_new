//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import '../models/meal.dart';

//  //   ///

class MealsScreen extends StatelessWidget {
  final String title;
  final List<Meal> meals;
  const MealsScreen({super.key, required this.title, required this.meals});

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
      debugPrint(meals.toString());
      screenContent = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (BuildContext ctx, int index) {
          const Text(
            "HElloooooooo",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            // meals[index].title,
            // style: const TextStyle(
            //     fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          );
          return null;
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      // body: Column(children: <Widget>[for (final meal in meals)Text(meal.title,style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),],),
      body: screenContent,
    );
  }
}
