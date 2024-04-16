import 'package:flutter/material.dart';
import 'package:milestone4/screen/home.dart';
import 'package:milestone4/model/user.dart';

void main() {
  runApp(const MyApp());
} 

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  } 
}