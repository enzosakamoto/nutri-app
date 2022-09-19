import 'package:flutter/material.dart';

class PopupWidget extends StatelessWidget {
  const PopupWidget({Key? key, required this.texto}) : super(key: key);
  final String texto;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Aviso'),
      content: Text(texto),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('OK'))
      ],
    );
  }
}
