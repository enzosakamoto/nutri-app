import 'package:flutter/material.dart';
import 'package:nutri_app/datapage/pages/datapage.dart';
import 'package:nutri_app/helppage/pages/helppage.dart';
import 'package:nutri_app/historypage/page/historypage.dart';
import 'package:nutri_app/homepage/pages/homepage.dart';

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
          .push(MaterialPageRoute(builder: (context) => const Homepage()));
      break;
    case 1:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const Historypage()));
      break;
    case 2:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const Datapage()));
      break;
    case 3:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const Helppage()));
      break;
    default:
  }
}
