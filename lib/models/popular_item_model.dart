import 'package:flutter/material.dart';

class PopularItemModel {
  String name;
  String description;
  Icon icon;
  bool boxIsSelected;

  PopularItemModel({
    required this.name,
    required this.description,
    required this.icon,
    required this.boxIsSelected,
  });

  static List<PopularItemModel> getPopularItems() {
    List<PopularItemModel> popularItems = [];

    popularItems.add(PopularItemModel(
      name: "Asus VivoBook S435",
      description: "Lorem ipsum dolor sit amet consecrate",
      icon: const Icon(Icons.computer_sharp, size: 40,),
      boxIsSelected: true,
    ));

    popularItems.add(PopularItemModel(
      name: "Samsung Galaxy M21",
      description: "Lorem ipsum dolor sit amet consecrate",
      icon: const Icon(Icons.phone_android_outlined, size: 40,),
      boxIsSelected: true,
    ));


    popularItems.add(PopularItemModel(
      name: "Smart Timer Tools",
      description: "Lorem ipsum dolor sit amet consecrate",
      icon: const Icon(Icons.alarm, size: 40,),
      boxIsSelected: true,
    ));

    popularItems.add(PopularItemModel(
      name: "Quentum Calculator",
      description: "Lorem ipsum dolor sit amet consecrate",
      icon: const Icon(Icons.calculate, size: 40,),
      boxIsSelected: true,
    ));

    return popularItems;
  }
}