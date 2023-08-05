import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/models/category.dart' as myApp;

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({super.key, required this.category});
  final myApp.Category category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      splashColor: Theme.of(context).hintColor,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding:const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.55),
              category.color.withOpacity(0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(category.title, style:Theme.of(context).textTheme.titleLarge!.copyWith(
          color:Theme.of(context).colorScheme.onBackground,
        ),),
      ),
    );
  }
}
