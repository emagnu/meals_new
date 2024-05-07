//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
//  Import FILES
import 'data/dummy_data.dart';
import 'screens /meal_screen.dart';
//  //   ///

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'New Meals App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: const Color.fromARGB(255, 131, 57, 0),
        ),
        textTheme: GoogleFonts.latoTextTheme(),
        useMaterial3: true,
      ),
      // home: const CategoriesScreen(),
      home: const MealScreen(
        title: 'Some dummy category ...',
        meals: dummyMeals, //[],
      ),
    );
  }
}


//  //   ///
//  Import LIBRARIES
//  Import FILES
//  //   ///
