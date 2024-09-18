import 'package:flutter/material.dart';
import 'package:food_categories/components/meal_item.dart';
import 'package:food_categories/data/dummy_data.dart';
import 'package:food_categories/models/category.dart';
import 'package:food_categories/models/meal.dart';

class CategoriesMealsScreen extends StatelessWidget {
  const CategoriesMealsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;

    final List<Meal> categoryMeals = dummyMeals.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          category.title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (context, index) {
          return MealItem(meal: categoryMeals[index]);
        },
      ),
    );
  }
}
