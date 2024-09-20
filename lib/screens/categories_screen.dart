import 'package:flutter/material.dart';
import 'package:food_categories/components/category_item.dart';
import 'package:food_categories/data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(10),
      // Area de scroll, grid renderizada com o eixo horizontal
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200, // cada elemento vai ter 200 de largura
        childAspectRatio: 3 / 2, // proporção de cada elemento,
        crossAxisSpacing: 20, // espacamento entre os elementos
        mainAxisSpacing: 20, // espacamento entre os elementos
      ),
      children: DUMMY_CATEGORIES.map((cat) {
        return CategoryItem(category: cat);
      }).toList(),
    );
  }
}
