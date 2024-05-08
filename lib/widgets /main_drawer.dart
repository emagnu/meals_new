//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
//  //   ///

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: <Widget>[
        DrawerHeader(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Theme.of(context).colorScheme.primaryContainer,
                Theme.of(context).colorScheme.primaryContainer.withOpacity(0.8),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.fastfood,
                size: 48.0,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(width: 18.0),
              Text(
                'Cooking up!',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      // fontSize: 24.0,
                    ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 28.0),
        ListTile(
          leading: const Icon(Icons.restaurant),
          title: Text(
            'Meals',
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontSize: 24.0,
                ),
          ),
          onTap: () {
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) => const CategoriesScreen(),
            //   ),
            // );
          },
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: Text(
            'Filters',
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontSize: 24.0,
                ),
          ),
          onTap: () {
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) => const CategoriesScreen(),
            //   ),
            // );
          },
        ),
      ],
    ));
  }
}
