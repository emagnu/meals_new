//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';

import '../widgets /main_drawer.dart';
import 'tabs_screen.dart';
//  Import FILES
//  //   ///

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFreeFilterSet = false;
  bool _lactoseFreeFilterSet = false;
  bool _vegetarianFilterSet = false;
  bool _veganFilterSet = false;
  bool _paleoFilterSet = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      drawer: MainDrawer(
        onSelectScreen: (String identifier) {
          Navigator.of(context).pop();
          if (identifier == 'meals') {
            // Navigator.of(context).push(
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (ctx) => const TabsScreen(),
              ),
            );
          }
        },
      ),
      body: Column(
        children: <Widget>[
          SwitchListTile(
            value: _glutenFreeFilterSet,
            onChanged: (isCheked) {
              setState(() {
                _glutenFreeFilterSet = isCheked;
              });
            },
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
            title: Text(
              'Gluten-free',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                    // fontWeight: FontWeight.bold,
                    // fontSize: 24.0,
                  ),
            ),
            subtitle: Text(
              'Only include gluten-free meals',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                    // fontWeight: FontWeight.bold,
                    // fontSize: 24.0,
                  ),
            ),
          ),
          SwitchListTile(
            value: _lactoseFreeFilterSet,
            onChanged: (isCheked) {
              setState(() {
                _lactoseFreeFilterSet = isCheked;
              });
            },
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
            title: Text(
              'Lactose-free',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                    // fontWeight: FontWeight.bold,
                    // fontSize: 24.0,
                  ),
            ),
            subtitle: Text(
              'Only include lactose-free meals',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                    // fontWeight: FontWeight.bold,
                    // fontSize: 24.0,
                  ),
            ),
          ),
          SwitchListTile(
            value: _vegetarianFilterSet,
            onChanged: (isCheked) {
              setState(() {
                _vegetarianFilterSet = isCheked;
              });
            },
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
            title: Text(
              'Vegetarian',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                    // fontWeight: FontWeight.bold,
                    // fontSize: 24.0,
                  ),
            ),
            subtitle: Text(
              'Only include vegetarian meals',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                    // fontWeight: FontWeight.bold,
                    // fontSize: 24.0,
                  ),
            ),
          ),
          SwitchListTile(
            value: _veganFilterSet,
            onChanged: (isCheked) {
              setState(() {
                _veganFilterSet = isCheked;
              });
            },
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
            title: Text(
              'Vegan',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                    // fontWeight: FontWeight.bold,
                    // fontSize: 24.0,
                  ),
            ),
            subtitle: Text(
              'Only include vegan meals',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                    // fontWeight: FontWeight.bold,
                    // fontSize: 24.0,
                  ),
            ),
          ),
          SwitchListTile(
            value: _paleoFilterSet,
            onChanged: (isCheked) {
              setState(() {
                _paleoFilterSet = isCheked;
              });
            },
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
            title: Text(
              'Paleo-free',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                    // fontWeight: FontWeight.bold,
                    // fontSize: 24.0,
                  ),
            ),
            subtitle: Text(
              'Only include paleo-free meals',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                    // fontWeight: FontWeight.bold,
                    // fontSize: 24.0,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
