import 'package:flutter/material.dart';
import 'package:gosuper_mobile/models/category_model.dart';
import 'package:gosuper_mobile/models/popular_item_model.dart';
import 'package:gosuper_mobile/pages/login.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<CategoryModel> categories = [];
  List<PopularItemModel> popularItems = [];

  void _getInitialData() {
    categories = CategoryModel.getCategories();
    popularItems = PopularItemModel.getPopularItems();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialData();
    return Scaffold(
      appBar: appBar(context),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          _searchField(),
          const SizedBox(height:30,),
          _categoriesSection(),
          const SizedBox(height: 30,),
           _popularItemsSection(),
        ],
      ),
    );
  }

  Column _popularItemsSection() {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Popular Items',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),
            const SizedBox(height: 30,),
            ListView.separated(
              itemCount: popularItems.length,
              shrinkWrap: true,
              padding: const EdgeInsets.only(left: 20, right: 20),
              separatorBuilder: (context, index) => const SizedBox(height: 15,),
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  decoration: BoxDecoration(
                      color: popularItems[index].boxIsSelected ?
                      Colors.white: Colors.transparent,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: popularItems[index].boxIsSelected ? [
                        BoxShadow(
                          color: const Color(0xff1D1617).withOpacity(0.15),
                          offset: const Offset(0, 10),
                          blurRadius: 40,
                          spreadRadius: 0,
                        )
                      ] : []
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      popularItems[index].icon,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            popularItems[index].name,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            popularItems[index].description,
                            style: const TextStyle(
                              color: Color(0xff7B6F72),
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {

                        },
                        child: const Icon(
                          Icons.arrow_circle_right_outlined,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ],
        );
  }

  Container _searchField() {
    return Container(
      margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color(0xff1D1617).withOpacity(0.11),
              blurRadius: 40,
              spreadRadius: 0.0,
            )
          ]
      ),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: 'Search something...',
            hintStyle: const TextStyle(
                color: Color(0xffDDDADA)
            ),
            prefixIcon: const Padding(
              padding: EdgeInsets.all(15),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            suffixIcon: const SizedBox(
              width: 100,
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    VerticalDivider(
                      color: Colors.black,
                      indent: 10,
                      endIndent: 10,
                      thickness: 0.1,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.filter_alt_outlined,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
            ),
            contentPadding: const EdgeInsets.all(15),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            )
        ),
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      title: const Text(
        'GoSuper Mobile',
        style: TextStyle(
            color: Colors.green
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 1,
      actions: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
                MaterialPageRoute(builder: (context) => const LoginPage())
            );
          },
          child: Container(
            margin: const EdgeInsets.all(10),
            // decoration: BoxDecoration(
            //     color: const Color(0xffF7F8F8),
            //     borderRadius: BorderRadius.circular(5)
            // ),
            child: const Icon(
              Icons.login_outlined,
              size: 25.0,
              color: Colors.green,
            ),
          ),
        ),
      ],
    );
  }

  Column _categoriesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left:20),
          child: Text(
            'Categories',
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600
            ),
          ),
        ),
        const SizedBox(height: 15,),
        SizedBox(
          height: 120,
          child: ListView.separated(
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(
                left: 20,
                right: 20
            ),
            separatorBuilder: (context, index) => const SizedBox(width: 25,),
            itemBuilder: (context, index) {
              return Container(
                width: 150,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: categories[index].boxColor.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(16)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                      ),
                      child: categories[index].icon,
                    ),
                    Text(
                      categories[index].name,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 14
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
