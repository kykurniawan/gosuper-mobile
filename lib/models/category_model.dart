import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  Icon icon;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.icon,
    required this.boxColor,
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];
    
    categories.add(CategoryModel(
      name: "Electronics so Long",
      boxColor: Colors.teal,
      icon: const Icon(
        Icons.laptop_mac_outlined,
        size: 30.0,
      )
    ));

    categories.add(CategoryModel(
        name: "Tools",
        boxColor: Colors.blueAccent,
        icon: const Icon(
          Icons.account_tree_outlined,
          size: 30.0,
        )
    ));

    categories.add(CategoryModel(
        name: "Cameras",
        boxColor: Colors.amberAccent,
        icon: const Icon(
          Icons.camera_alt_outlined,
          size: 30.0,
        )
    ));

    categories.add(CategoryModel(
        name: "Phones",
        boxColor: Colors.deepOrangeAccent,
        icon: const Icon(
          Icons.phone_android_outlined,
          size: 30.0,
        )
    ));

    categories.add(CategoryModel(
        name: "Time",
        boxColor: Colors.deepPurpleAccent,
        icon: const Icon(
          Icons.access_alarm,
          size: 30.0,
        )
    ));
    
    return categories;
  }
}