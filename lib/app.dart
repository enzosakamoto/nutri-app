import 'package:flutter/material.dart';
import 'package:nutri_app/helppage/helppage.dart';
import 'package:nutri_app/homepage/pages/homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nutri App',
      home: Helppage(),
    );
  }
}
