import 'package:flutter/material.dart';
import 'package:gosuper_mobile/models/category_model.dart';
import 'package:gosuper_mobile/models/popular_item_model.dart';
import 'package:gosuper_mobile/pages/home.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(
        categories: CategoryModel.getCategories(),
        popularItems: PopularItemModel.getPopularItems(),
      ),
    );
  }
}
