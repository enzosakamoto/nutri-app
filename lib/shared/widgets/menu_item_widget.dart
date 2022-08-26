import 'package:flutter/material.dart';

Widget menuItemWidget({required String texto, required IconData icone}) {
  const color = Colors.white;

  return ListTile(
    leading: Icon(
      icone,
      color: color,
    ),
    title: Text(texto, style: const TextStyle(fontSize: 16, color: color)),
    onTap: () {},
  );
}
