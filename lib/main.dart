import 'package:flutter/material.dart';
import 'package:food_categories/screens/categories_meals_screen.dart';
import 'package:food_categories/screens/meal_detail_screen.dart';
import 'package:food_categories/screens/settings_screen.dart';
import 'package:food_categories/screens/tabs_screen.dart';
import 'package:food_categories/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData tema = ThemeData();

    return MaterialApp(
      theme: tema.copyWith(
        colorScheme: tema.colorScheme.copyWith(
          primary: const Color.fromARGB(255, 172, 37, 82),
          secondary: Colors.amber[100],
        ),
        textTheme: tema.textTheme.copyWith(
          titleLarge: const TextStyle(
            fontFamily: 'Raleway',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      routes: {
        AppRoutes.home: (context) => const TabsScreen(),
        AppRoutes.categories_meals: (context) => const CategoriesMealsScreen(),
        AppRoutes.meal_detail: (context) => const MealDetailScreen(),
        AppRoutes.settings: (context) => const  SettingsScreen(),
      },
    );
  }
}
