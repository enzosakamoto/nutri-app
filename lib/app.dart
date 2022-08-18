import 'package:flutter/material.dart';
import 'package:nutri_app/homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nutri App',
      home: Homepage(),
    );
  }
}
