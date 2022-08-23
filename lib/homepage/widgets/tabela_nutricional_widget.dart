import 'package:flutter/material.dart';

class TabelaNutricionalWidget extends StatelessWidget {
  const TabelaNutricionalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
          )
        ],
      ),
    );
  }
}
