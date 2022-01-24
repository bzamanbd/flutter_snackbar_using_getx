import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/home_screen.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget {
  final String title='Snackbar & Getx';
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(
      primarySwatch: Colors.pink
    ),
    home: HomeScreen(title: title,),
    );
  }
}