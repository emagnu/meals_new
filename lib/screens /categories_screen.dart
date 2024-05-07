//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';

//  Import FILES
import '../data/dummy_data.dart';
import '../widgets /category_grid_item.dart';
//  //   ///

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick your favourite food category'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: availableCategories
            .map((category) => CategoryGridItem(category: category))
            .toList(),
        // children: <Widget>[for (final category in availableCategories)CategoryGridItem(category: category),],
      ),
    );
  }
}

// Old dummy card
// Text('text item 1',
//     style: TextStyle(fontSize: 20, color: Colors.amber)),
// Text('text item 2',
//     style: TextStyle(fontSize: 20, color: Colors.amber)),
// Text('text item 3',
//     style: TextStyle(fontSize: 20, color: Colors.amber)),
// Text('text item 4',
//     style: TextStyle(fontSize: 20, color: Colors.amber)),
// Text('text item 5',
//     style: TextStyle(fontSize: 20, color: Colors.amber)),
// Text('text item 6',
//     style: TextStyle(fontSize: 20, color: Colors.amber)),
// Text('text item 7',
//     style: TextStyle(fontSize: 20, color: Colors.amber)),
// Text('text item 8',
//     style: TextStyle(fontSize: 20, color: Colors.amber)),
// Text('text item 9',
//     style: TextStyle(fontSize: 20, color: Colors.amber)),
// Text('text item 10',
//     style: TextStyle(fontSize: 20, color: Colors.amber)),
// Text('text item 11',
//     style: TextStyle(fontSize: 20, color: Colors.amber)),
// Text('text item 12',
//     style: TextStyle(fontSize: 20, color: Colors.amber))
