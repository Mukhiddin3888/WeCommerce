import 'package:flutter/material.dart';
import 'package:we_commerce/data/utils/color.dart';
import 'package:we_commerce/screens/main2.dart';
import 'package:we_commerce/screens/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: MyColors.primaryBlue
      ),
      home: Main2(),
    );
  }
}
