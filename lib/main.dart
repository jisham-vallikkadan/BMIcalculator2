import 'package:flutter/material.dart';

import 'bmicalculator.dart';
import 'resultbmi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiCalculator(height: 0,age: 0,weight: 0),
    );

  }
}
