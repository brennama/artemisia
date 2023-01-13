import 'package:flutter/material.dart';
import 'package:meals_app/art_data.dart';

import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          opacity: 0.7,
          fit: BoxFit.cover,
          image: AssetImage('assets/images/bosch_angels.jpg'),
        ),
      ),
      child: GridView(
        padding: const EdgeInsets.only(top: 120, left: 30, right: 30, bottom: 20),
        children: artCategories
            .map(
              (catData) => CategoryItem(
                catData.id,
                catData.title,
                catData.color,
                catData.categoryImage,
              ),
            )
            .toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
