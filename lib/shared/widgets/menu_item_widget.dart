import 'package:flutter/material.dart';
import 'package:nutri_app/historypage/page/historypage.dart';

Widget menuItemWidget({
  required String texto,
  required IconData icone,
  VoidCallback? onClicked,
}) {
  const color = Colors.white;

  return ListTile(
    leading: Icon(
      icone,
      color: color,
    ),
    title: Text(texto, style: const TextStyle(fontSize: 16, color: color)),
    onTap: onClicked,
  );
}

void selectedItem(BuildContext context, int index) {
  Navigator.of(context).pop();
  switch (index) {
    case 0:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const Historypage()));
      break;
    default:
  }
}
