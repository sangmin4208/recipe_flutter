import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_flutter/components/recipe_list_item.dart';
import 'package:recipe_flutter/components/recipe_menu.dart';
import 'package:recipe_flutter/components/recipe_title.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildRecipeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: const [
            RecipeTitle(),
            RecipeMenu(),
            RecipeListItem(imageName: "coffee", title: "Made Coffee"),
            RecipeListItem(imageName: "burger", title: "Made Burger"),
            RecipeListItem(imageName: "pizza", title: "Made Pizza"),
          ],
        ),
      ),
    );
  }

  AppBar _buildRecipeAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.5,
      actions: const [
        Icon(
          CupertinoIcons.search,
          color: Colors.black,
        ),
        SizedBox(width: 15),
        Icon(
          CupertinoIcons.heart,
          color: Colors.black,
        ),
        SizedBox(width: 15),
      ],
    );
  }
}
