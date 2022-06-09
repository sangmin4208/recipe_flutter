import 'package:flutter/material.dart';
import 'package:recipe_flutter/pages/recipe_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "PatuaOne",
      ),
      home: const RecipePage(),
    );
  }
}
